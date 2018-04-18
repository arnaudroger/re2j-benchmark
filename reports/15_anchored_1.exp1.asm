# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10144.954 ops/s
# Warmup Iteration   2: 21799.913 ops/s
# Warmup Iteration   3: 21938.589 ops/s
# Warmup Iteration   4: 21957.201 ops/s
# Warmup Iteration   5: 22005.295 ops/s
# Warmup Iteration   6: 21979.987 ops/s
# Warmup Iteration   7: 22011.285 ops/s
# Warmup Iteration   8: 22123.793 ops/s
# Warmup Iteration   9: 22159.968 ops/s
# Warmup Iteration  10: 22159.578 ops/s
# Warmup Iteration  11: 22163.629 ops/s
# Warmup Iteration  12: 22167.559 ops/s
# Warmup Iteration  13: 22164.029 ops/s
# Warmup Iteration  14: 22166.467 ops/s
# Warmup Iteration  15: 22097.036 ops/s
# Warmup Iteration  16: 22158.695 ops/s
# Warmup Iteration  17: 22096.866 ops/s
# Warmup Iteration  18: 22110.935 ops/s
# Warmup Iteration  19: 22105.769 ops/s
# Warmup Iteration  20: 22102.864 ops/s
Iteration   1: 22103.684 ops/s
Iteration   2: 22139.063 ops/s
Iteration   3: 22180.509 ops/s
Iteration   4: 22185.074 ops/s
Iteration   5: 22174.898 ops/s
Iteration   6: 22185.178 ops/s
Iteration   7: 22186.863 ops/s
Iteration   8: 22177.519 ops/s
Iteration   9: 22183.414 ops/s
Iteration  10: 22141.205 ops/s
Iteration  11: 22184.650 ops/s
Iteration  12: 22190.467 ops/s
Iteration  13: 22184.824 ops/s
Iteration  14: 22177.937 ops/s
Iteration  15: 22140.567 ops/s
Iteration  16: 22167.216 ops/s
Iteration  17: 22182.524 ops/s
Iteration  18: 22178.408 ops/s
Iteration  19: 22183.898 ops/s
Iteration  20: 22184.890 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  22171.639 ±(99.9%) 19.596 ops/s [Average]
  (min, avg, max) = (22103.684, 22171.639, 22190.467), stdev = 22.567
  CI (99.9%): [22152.043, 22191.235] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 195332 total address lines.
Perf output processed (skipped 23.364 seconds):
 Column 1: cycles (20323 events)
 Column 2: instructions (20388 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 498 (910 bytes) 

                     0x00007faded222eb2: jae    0x00007faded2236b5
                     0x00007faded222eb8: mov    %rdx,%r10
                     0x00007faded222ebb: mov    %rcx,%r8
                     0x00007faded222ebe: shr    $0x3,%r8
                     0x00007faded222ec2: mov    %r8d,(%rdx)
                     0x00007faded222ec5: shr    $0x9,%r10
                     0x00007faded222ec9: movabs $0x7fadfd5fa000,%r8
                     0x00007faded222ed3: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.04%     0x00007faded222ed7: mov    0x10(%rsp),%rax
  0.47%    0.36%     0x00007faded222edc: mov    0xac(%rsp),%r13d
  0.01%    0.02%     0x00007faded222ee4: mov    0xa4(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 317)
  2.15%    2.29%  ↗  0x00007faded222eec: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@222 (line 283)
  0.10%    0.20%  │  0x00007faded222eef: cmp    %r13d,%r10d
                  │  0x00007faded222ef2: jge    0x00007faded223378  ;*iload
                  │                                                ; - com.google.re2j.Machine::step@31 (line 286)
  0.58%    0.87%  │  0x00007faded222ef8: mov    0x20(%rax),%r9d    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine::step@86 (line 296)
  0.38%    0.31%  │  0x00007faded222efc: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007faded224305
  1.64%    1.98%  │  0x00007faded222f01: cmp    %r8d,%r10d
                  │  0x00007faded222f04: jae    0x00007faded2234b2
  0.30%    0.27%  │  0x00007faded222f0a: lea    (%r12,%r9,8),%r8
  0.74%    0.67%  │  0x00007faded222f0e: mov    0x10(%r8,%r10,4),%r8d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@91 (line 296)
  0.39%    0.30%  │  0x00007faded222f13: mov    0xc(%r12,%r8,8),%ebp  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@96 (line 298)
                  │                                                ; implicit exception: dispatches to 0x00007faded224319
  3.19%    3.48%  │  0x00007faded222f18: cmp    $0x6,%ebp
                  │  0x00007faded222f1b: je     0x00007faded2234e5  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@101 (line 298)
  1.49%    1.37%  │  0x00007faded222f21: cmp    $0xa,%ebp
                  │  0x00007faded222f24: jne    0x00007faded223307  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.32%    0.27%  │  0x00007faded222f2a: mov    0x2c(%r12,%r8,8),%ecx  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@191 (line 314)
  0.22%    0.03%  │  0x00007faded222f2f: mov    0x8(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007faded224329
  2.13%    1.86%  │  0x00007faded222f34: lea    (%r12,%rcx,8),%r8
                  │  0x00007faded222f38: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007faded222f3e: jne    0x00007faded2233a8  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@206 (line 314)
  0.51%    0.70%  │  0x00007faded222f44: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.09%  │  0x00007faded222f48: mov    0x10(%r11),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  │                                                ; implicit exception: dispatches to 0x00007faded22433d
  0.00%           │  0x00007faded222f4c: cmp    $0x40,%edx
                  │  0x00007faded222f4f: jg     0x00007faded223811  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.73%    0.83%  │  0x00007faded222f55: mov    $0x1,%edi
           0.00%  │  0x00007faded222f5a: mov    %edx,%ecx
  0.03%    0.02%  │  0x00007faded222f5c: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.38%    1.54%  │  0x00007faded222f5f: mov    %r9,%rcx
  0.00%    0.00%  │  0x00007faded222f62: and    %rdi,%rcx
  0.01%    0.04%  │  0x00007faded222f65: test   %rcx,%rcx
                  ╰  0x00007faded222f68: jne    0x00007faded222eec  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.20%     0x00007faded222f6e: cmp    $0x40,%edx
                     0x00007faded222f71: jge    0x00007faded22386d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.47%     0x00007faded222f77: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007faded222f7b: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007faded222f7f: or     %r9,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.17%     0x00007faded222f82: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.43%     0x00007faded222f86: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007faded224351
  1.22%    1.32%     0x00007faded222f8b: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007faded222f92: jne    0x00007faded2235a5
  0.69%    0.76%     0x00007faded222f98: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007faded222f9c: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.54%     0x00007faded222fa0: cmp    $0x40,%ecx
                     0x00007faded222fa3: jg     0x00007faded2238c9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.47%     0x00007faded222fa9: mov    $0x1,%ebx
  0.16%    0.10%     0x00007faded222fae: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  1.13%    0.92%     0x00007faded222fb1: mov    %rdi,%rdx
  0.08%    0.04%     0x00007faded222fb4: and    %rbx,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007faded222fb7: test   %rdx,%rdx
                     0x00007faded222fba: jne    0x00007faded22345f  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.48%    0.45%     0x00007faded222fc0: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.05%     0x00007faded222fc2: test   %rdx,%rdx
                     0x00007faded222fc5: jne    0x00007faded223925  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.39%     0x00007faded222fcb: cmp    $0x40,%ecx
                     0x00007faded222fce: jge    0x00007faded223985  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007faded222fd4: or     %rbx,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.00%     0x00007faded222fd7: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.10%     0x00007faded222fdb: mov    0x20(%r11),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.42%     0x00007faded222fdf: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007faded222fe3: mov    %ecx,%edx
  0.01%    0.00%     0x00007faded222fe5: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.04%     0x00007faded222fe7: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.23%     0x00007faded222feb: mov    0xc(%r12,%rbx,8),%r14d  ; implicit exception: dispatches to 0x00007faded224365
                     0x00007faded222ff0: cmp    %r14d,%ecx
                     0x00007faded222ff3: jae    0x00007faded223545
  0.02%    0.00%     0x00007faded222ff9: mov    0x8(%r12,%rbx,8),%esi
  0.11%    0.01%     0x00007faded222ffe: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007faded223004: jne    0x00007faded223601  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.28%     0x00007faded22300a: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007faded22300e: mov    %r9,%rsi
  0.04%    0.02%     0x00007faded223011: shr    $0x3,%rsi          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.04%     0x00007faded223015: lea    (%r12,%rbx,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.56%    0.48%     0x00007faded223019: lea    0x10(%r9,%rcx,4),%rbp
  0.00%              0x00007faded22301e: mov    %esi,0x0(%rbp)
  0.02%    0.04%     0x00007faded223021: mov    %rbp,%rsi
  0.12%    0.09%     0x00007faded223024: shr    $0x9,%rsi
  0.59%    0.47%     0x00007faded223028: movabs $0x7fadfd5fa000,%rbp
  0.00%    0.00%     0x00007faded223032: mov    %r12b,0x0(%rbp,%rsi,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007faded223037: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007faded224381
  0.10%    0.10%     0x00007faded22303c: vmovd  %edx,%xmm2
  0.55%    0.55%     0x00007faded223040: vmovd  %ebx,%xmm1
           0.00%     0x00007faded223044: mov    %r10d,0xa4(%rsp)
  0.04%    0.01%     0x00007faded22304c: mov    %r13d,0xac(%rsp)
  0.14%    0.03%     0x00007faded223054: mov    %r11,%r13
  0.57%    0.40%     0x00007faded223057: mov    %rax,0x10(%rsp)
                     0x00007faded22305c: mov    %ecx,%eax
  0.04%    0.03%     0x00007faded22305e: movslq %ecx,%r10
  0.18%    0.07%     0x00007faded223061: lea    (%r9,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.52%     0x00007faded223065: mov    %rbx,%rdx
  0.00%              0x00007faded223068: add    $0x14,%rdx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007faded22306c: lea    (%r12,%r8,8),%r11
  0.11%    0.10%     0x00007faded223070: mov    %ecx,%r10d
  0.50%    0.38%     0x00007faded223073: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007faded223077: cmp    $0xf8019885,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007faded22307d: jne    0x00007faded222e4f  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.01%     0x00007faded223083: vmovq  %r11,%xmm0
  0.11%    0.11%     0x00007faded223088: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.32%     0x00007faded22308c: mov    %r11d,%ecx
           0.00%     0x00007faded22308f: cmp    $0x40,%r11d
                     0x00007faded223093: jg     0x00007faded223b81  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%     0x00007faded223099: mov    $0x1,%r8d
  0.18%    0.04%     0x00007faded22309f: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.61%    0.18%     0x00007faded2230a2: mov    %rdi,%r11
  0.11%    0.03%     0x00007faded2230a5: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.57%    0.18%     0x00007faded2230a8: test   %r11,%r11
                     0x00007faded2230ab: jne    0x00007faded223469  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007faded2230b1: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007faded2230b3: test   %r11,%r11
                     0x00007faded2230b6: jne    0x00007faded223bbd  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.03%     0x00007faded2230bc: mov    %ecx,%r11d
  0.48%    0.26%     0x00007faded2230bf: cmp    $0x40,%r11d
                     0x00007faded2230c3: jge    0x00007faded223be9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.01%     0x00007faded2230c9: vmovq  %xmm0,%r11
  0.01%    0.01%     0x00007faded2230ce: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.08%     0x00007faded2230d2: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.41%     0x00007faded2230d5: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007faded2230d9: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007faded2243b5
  0.05%    0.02%     0x00007faded2230de: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007faded2230e5: jne    0x00007faded223775
  0.13%    0.13%     0x00007faded2230eb: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.12%     0x00007faded2230ef: vmovq  %r11,%xmm0
                     0x00007faded2230f4: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.02%     0x00007faded2230f8: vmovd  %r11d,%xmm3
  0.10%    0.01%     0x00007faded2230fd: cmp    $0x40,%r11d
                     0x00007faded223101: jg     0x00007faded223c25  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.37%     0x00007faded223107: mov    $0x1,%r8d
                     0x00007faded22310d: mov    %r11d,%ecx
  0.02%    0.00%     0x00007faded223110: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.60%    0.73%     0x00007faded223113: mov    %rdi,%r11
  0.02%    0.04%     0x00007faded223116: and    %r8,%r11
  0.07%    0.18%     0x00007faded223119: test   %r11,%r11
                     0x00007faded22311c: jne    0x00007faded223473  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.51%    0.88%     0x00007faded223122: mov    %ecx,%r11d
  0.01%    0.01%     0x00007faded223125: cmp    $0x40,%r11d
                     0x00007faded223129: jge    0x00007faded223d91  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%     0x00007faded22312f: vmovq  %xmm0,%r11
  0.10%    0.10%     0x00007faded223134: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.65%    0.56%     0x00007faded223138: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007faded22313b: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007faded22313f: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007faded2243c9
  0.24%    0.26%     0x00007faded223144: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007faded22314b: jne    0x00007faded2237cd
  0.59%    0.79%     0x00007faded223151: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007faded223155: vmovq  %r11,%xmm3
  0.02%    0.05%     0x00007faded22315a: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.17%     0x00007faded22315e: mov    %r11d,%ecx
  0.62%    0.72%     0x00007faded223161: cmp    $0x40,%r11d
                     0x00007faded223165: jg     0x00007faded223dcd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%     0x00007faded22316b: mov    $0x1,%r8d
  0.04%    0.02%     0x00007faded223171: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.69%    0.73%     0x00007faded223174: mov    %rdi,%r11
  0.03%    0.02%     0x00007faded223177: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.07%     0x00007faded22317a: test   %r11,%r11
                     0x00007faded22317d: jne    0x00007faded22348a  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.60%     0x00007faded223183: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007faded223185: test   %r11,%r11
                     0x00007faded223188: jne    0x00007faded223e0d  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.11%     0x00007faded22318e: mov    %ecx,%r11d
  0.13%    0.10%     0x00007faded223191: cmp    $0x40,%r11d
                     0x00007faded223195: jge    0x00007faded223e45  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.50%     0x00007faded22319b: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007faded22319f: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.10%     0x00007faded2231a2: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.07%     0x00007faded2231a6: cmp    %r14d,%r10d
                     0x00007faded2231a9: jae    0x00007faded223731  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.52%    0.47%     0x00007faded2231af: vmovq  %xmm0,%r10
  0.01%    0.01%     0x00007faded2231b4: mov    0x34(%r10),%r11d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%     0x00007faded2231b8: mov    %rdx,%r10
  0.10%    0.08%     0x00007faded2231bb: vmovq  %xmm3,%r8
  0.56%    0.55%     0x00007faded2231c0: shr    $0x3,%r8
  0.00%    0.00%     0x00007faded2231c4: mov    %r8d,(%rdx)
  0.07%    0.12%     0x00007faded2231c7: shr    $0x9,%r10
  0.08%    0.14%     0x00007faded2231cb: movabs $0x7fadfd5fa000,%r8
  0.53%    0.61%     0x00007faded2231d5: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007faded2231d9: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007faded2243dd
  0.11%    0.12%     0x00007faded2231de: lea    (%r12,%r11,8),%r10
  0.07%    0.17%     0x00007faded2231e2: cmp    $0xf8019885,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007faded2231e9: je     0x00007faded22326a
  0.50%    0.61%     0x00007faded2231eb: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007faded2231f2: jne    0x00007faded223b51  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%     0x00007faded2231f8: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.04%     0x00007faded2231fc: cmp    $0x40,%ecx
                     0x00007faded2231ff: jg     0x00007faded223f8d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.04%     0x00007faded223205: mov    $0x1,%r11d
  0.46%    0.32%     0x00007faded22320b: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.28%     0x00007faded22320e: mov    %rdi,%r8
  0.45%    0.79%     0x00007faded223211: and    %r11,%r8           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%     0x00007faded223214: test   %r8,%r8
                     0x00007faded223217: jne    0x00007faded22349e  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.07%     0x00007faded22321d: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.17%     0x00007faded22321f: test   %r8,%r8
                     0x00007faded223222: jne    0x00007faded223ffd  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.62%     0x00007faded223228: cmp    $0x40,%ecx
                     0x00007faded22322b: jge    0x00007faded22404d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007faded223231: or     %r11,%rdi
  0.08%    0.14%     0x00007faded223234: mov    %r13,%r11
  0.10%    0.10%     0x00007faded223237: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.74%     0x00007faded22323b: add    $0x18,%rbx
  0.01%    0.01%     0x00007faded22323f: mov    %r10,%r8
  0.08%    0.06%     0x00007faded223242: shr    $0x3,%r8
  0.08%    0.19%     0x00007faded223246: mov    %r8d,(%rbx)        ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.54%    0.59%     0x00007faded223249: mov    %rbx,%r10
  0.02%              0x00007faded22324c: add    $0x3,%eax
  0.05%    0.12%     0x00007faded22324f: mov    %eax,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.16%     0x00007faded223253: shr    $0x9,%r10
  0.50%    0.57%     0x00007faded223257: movabs $0x7fadfd5fa000,%r8
  0.00%              0x00007faded223261: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.08%     0x00007faded223265: jmpq   0x00007faded222ed7  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 47.85%   45.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 540 (1194 bytes) 

                                                                              ; - java.lang.String::charAt@27 (line 660)
                                                                              ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@60 (line 193)
                                0x00007faded23be79: cmp    $0xd800,%r11d
                                0x00007faded23be80: jge    0x00007faded23d361  ;*if_icmplt
                                                                              ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                              ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                         0x00007faded23be86: shl    $0x3,%r11d         ;*ishl
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                              ; - com.google.re2j.Machine::match@60 (line 193)
           0.00%                0x00007faded23be8a: mov    %r11d,%r10d
                                0x00007faded23be8d: and    $0x7,%r10d
                                0x00007faded23be91: or     $0x1,%r11d
                                0x00007faded23be95: mov    %r11d,%esi
                                0x00007faded23be98: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                              ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%    0.00%                0x00007faded23be9c: mov    %r10d,0x28(%rsp)
  0.00%    0.01%                0x00007faded23bea1: mov    %r11d,%edi
                                0x00007faded23bea4: sar    $0x3,%edi          ;*ishr
                                                                              ; - com.google.re2j.Machine::match@68 (line 194)
           0.00%                0x00007faded23bea7: cmp    $0xfffffff8,%r11d
                                0x00007faded23beab: je     0x00007faded23cf38  ;*if_icmpeq
                                                                              ; - com.google.re2j.Machine::match@88 (line 198)
                                0x00007faded23beb1: vmovd  %xmm1,%r10d
                                0x00007faded23beb6: add    0x28(%rsp),%r10d
  0.02%    0.01%                0x00007faded23bebb: add    0x24(%rsp),%r10d   ;*iadd
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%                0x00007faded23bec0: mov    %r10d,%ebx
                                0x00007faded23bec3: cmp    0x20(%rsp),%r10d
                                0x00007faded23bec8: jge    0x00007faded23c831  ;*if_icmpge
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                         0x00007faded23bece: test   %r10d,%r10d
                                0x00007faded23bed1: jl     0x00007faded23d225  ;*iflt
                                                                              ; - java.lang.String::charAt@1 (line 657)
                                                                              ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.00%                0x00007faded23bed7: cmp    %eax,%r10d
                                0x00007faded23beda: jge    0x00007faded23d3b1  ;*if_icmplt
                                                                              ; - java.lang.String::charAt@10 (line 657)
                                                                              ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                         0x00007faded23bee0: cmp    %eax,%r10d
                                0x00007faded23bee3: jae    0x00007faded23cfcd
  0.00%    0.00%                0x00007faded23bee9: movzwl 0x10(%r8,%r10,2),%r11d  ;*caload
                                                                              ; - java.lang.String::charAt@27 (line 660)
                                                                              ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
                                0x00007faded23beef: cmp    $0xd800,%r11d
                                0x00007faded23bef6: jge    0x00007faded23d40d  ;*if_icmplt
                                                                              ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                              ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                         0x00007faded23befc: shl    $0x3,%r11d         ;*ishl
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
                                0x00007faded23bf00: mov    %r11d,%r8d
                                0x00007faded23bf03: or     $0x1,%r8d
           0.00%                0x00007faded23bf07: and    $0x7,%r11d
                                0x00007faded23bf0b: sar    $0x3,%r8d
  0.00%    0.01%                0x00007faded23bf0f: or     $0x1,%r11d         ;*ishr
                                                                              ; - com.google.re2j.Machine::match@104 (line 200)
                                0x00007faded23bf13: vmovd  %xmm1,%r10d
                                0x00007faded23bf18: test   %r10d,%r10d
                                0x00007faded23bf1b: jne    0x00007faded23d1d9  ;*ifne
                                                                              ; - com.google.re2j.Machine::match@115 (line 204)
                                0x00007faded23bf21: test   %edi,%edi
                                0x00007faded23bf23: jl     0x00007faded23c810  ;*ifge
                                                                              ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                0x00007faded23bf29: mov    %r8d,%ebx
  0.00%                         0x00007faded23bf2c: mov    %r11d,0x30(%rsp)
                                0x00007faded23bf31: mov    $0x5,%r10d         ;*iload_1
                                                                              ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
                                0x00007faded23bf37: cmp    $0xa,%edi
                                0x00007faded23bf3a: je     0x00007faded23c83f  ;*iload_0
                                                                              ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                         0x00007faded23bf40: mov    %edi,%r8d
                                0x00007faded23bf43: add    $0xffffffbf,%r8d
                                0x00007faded23bf47: cmp    $0x1a,%r8d
                  ╭             0x00007faded23bf4b: jb     0x00007faded23bf5e  ;*if_icmple
                  │                                                           ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                  │             0x00007faded23bf4d: mov    %edi,%r11d
           0.00%  │             0x00007faded23bf50: add    $0xffffff9f,%r11d
                  │             0x00007faded23bf54: cmp    $0x1a,%r11d
                  │             0x00007faded23bf58: jae    0x00007faded23c848  ;*iconst_1
                  │                                                           ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                           ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘             0x00007faded23bf5e: or     $0x10,%r10d        ;*iload_2
                                                                              ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                              ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.00%                0x00007faded23bf62: mov    0x3c(%rsp),%r8d
  0.00%                         0x00007faded23bf67: test   %r8d,%r8d
                                0x00007faded23bf6a: jne    0x00007faded23d099  ;*aload
                                                                              ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%                         0x00007faded23bf70: vmovq  %xmm0,%r11
                                0x00007faded23bf75: movzbl 0x11(%r11),%r8d    ;*getfield captures
                                                                              ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%    0.00%                0x00007faded23bf7a: mov    %rcx,%r11
  0.00%                         0x00007faded23bf7d: shl    $0x3,%r11          ;*getfield q1
                                                                              ; - com.google.re2j.Machine::match@53 (line 192)
                                0x00007faded23bf81: mov    %r11,0x58(%rsp)
                                0x00007faded23bf86: xor    %eax,%eax
  0.00%    0.00%                0x00007faded23bf88: xor    %r9d,%r9d
                                0x00007faded23bf8b: mov    %r9d,0x14(%rsp)
                   ╭            0x00007faded23bf90: jmpq   0x00007faded23c10f
  0.24%    0.32%   │    ↗       0x00007faded23bf95: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.18%   │    │       0x00007faded23bf99: mov    %r9d,0x2c(%rsp)    ;*iload_2
                   │    │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.28%   │    │↗      0x00007faded23bf9e: cmp    0x20(%rsp),%r13d
                   │    ││      0x00007faded23bfa3: je     0x00007faded23c754  ;*if_icmpne
                   │    ││                                                    ; - com.google.re2j.Machine::match@351 (line 246)
  0.33%    0.25%   │    ││      0x00007faded23bfa9: xor    %r11d,%r11d
  0.21%    0.27%   │    ││      0x00007faded23bfac: mov    %r13d,0x34(%rsp)
  0.27%    0.23%   │    ││      0x00007faded23bfb1: mov    %r10d,0x20(%rsp)
  0.32%    0.26%   │    ││      0x00007faded23bfb6: vmovq  %xmm0,%rsi
  0.11%    0.09%   │    ││      0x00007faded23bfbb: mov    0x18(%rsp),%rdx
  0.35%    0.45%   │    ││      0x00007faded23bfc0: mov    0x58(%rsp),%rcx
  0.10%    0.15%   │    ││      0x00007faded23bfc5: mov    %r13d,%r8d
  0.14%    0.21%   │    ││      0x00007faded23bfc8: mov    0x14(%rsp),%r9d
  0.07%    0.12%   │    ││      0x00007faded23bfcd: mov    0x2c(%rsp),%r10d
  0.34%    0.26%   │    ││      0x00007faded23bfd2: mov    %r10d,(%rsp)
  0.22%    0.20%   │    ││      0x00007faded23bfd6: xor    %ebx,%ebx
  0.11%    0.11%   │    ││      0x00007faded23bfd8: mov    %ebx,0x8(%rsp)
  0.25%    0.16%   │    ││      0x00007faded23bfdc: mov    %r11d,0x10(%rsp)
  0.27%    0.28%   │    ││      0x00007faded23bfe1: xchg   %ax,%ax
  0.13%    0.22%   │    ││      0x00007faded23bfe3: callq  0x00007faded046020  ; OopMap{[24]=Oop [56]=NarrowOop [72]=Oop [80]=Oop [88]=Oop off=648}
                   │    ││                                                    ;*invokespecial step
                   │    ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
                   │    ││                                                    ;   {optimized virtual_call}
  0.69%    0.77%   │    ││      0x00007faded23bfe8: mov    0x50(%rsp),%r10
  0.00%            │    ││      0x00007faded23bfed: movzbl 0x11(%r10),%r8d    ;*getfield captures
                   │    ││                                                    ; - com.google.re2j.Machine::match@371 (line 250)
  0.00%    0.00%   │    ││      0x00007faded23bff2: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                    ; - com.google.re2j.Machine::match@378 (line 250)
  0.74%    0.70%   │    ││      0x00007faded23bff7: mov    0x28(%rsp),%r11d
                   │    ││      0x00007faded23bffc: test   %r11d,%r11d
                   │    ││      0x00007faded23bfff: je     0x00007faded23c714  ;*ifne
                   │    ││                                                    ; - com.google.re2j.Machine::match@364 (line 247)
                   │    ││      0x00007faded23c005: test   %r8d,%r8d
                   │    ││      0x00007faded23c008: jne    0x00007faded23ca81  ;*ifne
                   │    ││                                                    ; - com.google.re2j.Machine::match@374 (line 250)
                   │    ││      0x00007faded23c00e: test   %eax,%eax
                   │    ││      0x00007faded23c010: jne    0x00007faded23cc65  ;*ifeq
                   │    ││                                                    ; - com.google.re2j.Machine::match@381 (line 250)
  0.69%    1.02%   │    ││      0x00007faded23c016: mov    0x48(%rsp),%rdx
           0.00%   │    ││      0x00007faded23c01b: mov    0x10(%rdx),%ecx    ;*getfield end
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%            │    ││      0x00007faded23c01e: mov    0xc(%rdx),%r11d    ;*getfield start
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.01%   │    ││      0x00007faded23c022: mov    %r11d,0x24(%rsp)
  0.66%    0.37%   │    ││      0x00007faded23c027: mov    0x14(%rdx),%r9d    ;*getfield str
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.02%   │    ││      0x00007faded23c02b: mov    0x20(%rsp),%ebp
                   │    ││      0x00007faded23c02f: cmp    $0xffffffff,%ebp
                   │    ││      0x00007faded23c032: je     0x00007faded23c75f  ;*if_icmpeq
                   │    ││                                                    ; - com.google.re2j.Machine::match@403 (line 258)
                   │    ││      0x00007faded23c038: mov    0x30(%rsp),%r14d
  0.67%    1.03%   │    ││      0x00007faded23c03d: add    0x14(%rsp),%r14d
                   │    ││      0x00007faded23c042: add    %r11d,%r14d        ;*iadd
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││      0x00007faded23c045: cmp    %ecx,%r14d
                   │    ││      0x00007faded23c048: jge    0x00007faded23c780  ;*if_icmpge
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
           0.00%   │    ││      0x00007faded23c04e: mov    %ebp,%r13d
  0.65%    0.81%   │    ││      0x00007faded23c051: mov    %r10,%rdi
  0.00%    0.00%   │    ││      0x00007faded23c054: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007faded23da5d
  0.07%    0.02%   │    ││      0x00007faded23c059: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││      0x00007faded23c060: jne    0x00007faded23c9ed
  0.03%    0.02%   │    ││      0x00007faded23c066: lea    (%r12,%r9,8),%r10  ;*invokeinterface charAt
                   │    ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.62%    1.00%   │    ││      0x00007faded23c06a: vmovq  %r10,%xmm0
           0.00%   │    ││      0x00007faded23c06f: test   %r14d,%r14d
                   │    ││      0x00007faded23c072: jl     0x00007faded23cac9  ;*iflt
                   │    ││                                                    ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││      0x00007faded23c078: mov    0xc(%r10),%ebx     ;*getfield value
                   │    ││                                                    ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.02%   │    ││      0x00007faded23c07c: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │    ││                                                    ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
                   │    ││                                                    ; implicit exception: dispatches to 0x00007faded23da71
  1.19%    1.11%   │    ││      0x00007faded23c081: cmp    %ebp,%r14d
                   │    ││      0x00007faded23c084: jge    0x00007faded23ccad  ;*if_icmplt
                   │    ││                                                    ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.57%    0.61%   │    ││      0x00007faded23c08a: cmp    %ebp,%r14d
                   │    ││      0x00007faded23c08d: jae    0x00007faded23c8e5
  0.01%    0.00%   │    ││      0x00007faded23c093: lea    (%r12,%rbx,8),%r10
                   │    ││      0x00007faded23c097: movzwl 0x10(%r10,%r14,2),%r11d  ;*caload
                   │    ││                                                    ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.38%    0.36%   │    ││      0x00007faded23c09d: cmp    $0xd800,%r11d
                   │    ││      0x00007faded23c0a4: jge    0x00007faded23cd01  ;*if_icmplt
                   │    ││                                                    ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                    ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.63%    0.78%   │    ││      0x00007faded23c0aa: shl    $0x3,%r11d         ;*ishl
                   │    ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.04%   │    ││      0x00007faded23c0ae: mov    %r11d,%ebx
                   │    ││      0x00007faded23c0b1: or     $0x1,%ebx
  0.72%    0.97%   │    ││      0x00007faded23c0b4: and    $0x7,%r11d
  0.25%    0.28%   │    ││      0x00007faded23c0b8: sar    $0x3,%ebx          ;*ishr
                   │    ││                                                    ; - com.google.re2j.Machine::match@419 (line 260)
  0.46%    0.46%   │    ││      0x00007faded23c0bb: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │    ││                                                    ; - com.google.re2j.Machine::match@411 (line 259)
  0.16%    0.16%   │    ││      0x00007faded23c0bf: mov    %rdi,%r10
  0.01%    0.02%   │    ││      0x00007faded23c0c2: mov    %r13d,%ebp         ;*aload
                   │    ││                                                    ; - com.google.re2j.Machine::match@429 (line 263)
  0.05%    0.05%   │    ││      0x00007faded23c0c5: vmovq  %r10,%xmm0         ; OopMap{r10=Oop r9=NarrowOop xmm0=Oop [24]=Oop [72]=Oop [88]=Oop off=874}
                   │    ││                                                    ;*goto
                   │    ││                                                    ; - com.google.re2j.Machine::match@441 (line 266)
  0.55%    0.43%   │    ││      0x00007faded23c0ca: test   %eax,0x179b5f30(%rip)        # 0x00007fae04bf2000
                   │    ││                                                    ;*goto
                   │    ││                                                    ; - com.google.re2j.Machine::match@441 (line 266)
                   │    ││                                                    ;   {poll}
  0.22%    0.19%   │    ││      0x00007faded23c0d0: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │    ││                                                    ; - com.google.re2j.Machine::match@307 (line 243)
  0.02%    0.01%   │    ││      0x00007faded23c0d4: mov    0x14(%r10),%r13d   ;*getfield re2
                   │    ││                                                    ; - com.google.re2j.Machine::match@169 (line 220)
  0.06%    0.03%   │    ││      0x00007faded23c0d8: mov    0x58(%rsp),%r10
  0.45%    0.38%   │    ││      0x00007faded23c0dd: mov    %r10,%rdi
  0.17%    0.21%   │    ││      0x00007faded23c0e0: shr    $0x3,%rdi
  0.01%    0.00%   │    ││      0x00007faded23c0e4: mov    %edi,0x38(%rsp)
  0.05%    0.04%   │    ││      0x00007faded23c0e8: mov    %ebp,%edi
  0.50%    0.44%   │    ││      0x00007faded23c0ea: mov    0x2c(%rsp),%r10d
  0.23%    0.20%   │    ││      0x00007faded23c0ef: mov    0x18(%rsp),%rdx
  0.01%    0.01%   │    ││      0x00007faded23c0f4: mov    %rdx,0x58(%rsp)
  0.06%    0.05%   │    ││      0x00007faded23c0f9: mov    0x30(%rsp),%edx
  0.43%    0.44%   │    ││      0x00007faded23c0fd: mov    %edx,0x28(%rsp)
  0.16%    0.18%   │    ││      0x00007faded23c101: mov    %r11d,0x30(%rsp)
  0.00%    0.01%   │    ││      0x00007faded23c106: mov    %ecx,0x20(%rsp)
  0.09%    0.08%   │    ││      0x00007faded23c10a: vmovd  %r9d,%xmm4         ;*getfield matchcap
                   │    ││                                                    ; - com.google.re2j.Machine::match@307 (line 243)
  0.44%    0.49%   ↘    ││      0x00007faded23c10f: mov    0x38(%rsp),%r11d
  0.42%    0.22%        ││      0x00007faded23c114: movzbl 0x18(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007faded23da01
  0.04%    0.03%        ││      0x00007faded23c11a: shl    $0x3,%r11          ;*aload
                        ││                                                    ; - com.google.re2j.Machine::match@136 (line 211)
  0.04%    0.07%        ││      0x00007faded23c11e: mov    %r11,0x18(%rsp)
  0.50%    0.47%        ││      0x00007faded23c123: test   %ecx,%ecx
                        ││      0x00007faded23c125: jne    0x00007faded23c39c  ;*ifeq
                        ││                                                    ; - com.google.re2j.Machine::match@141 (line 211)
  0.22%    0.23%        ││      0x00007faded23c12b: mov    0x14(%rsp),%r13d   ;*iload_3
                        ││                                                    ; - com.google.re2j.Machine::match@267 (line 237)
  0.01%    0.00%        ││      0x00007faded23c130: test   %eax,%eax
                        ││      0x00007faded23c132: jne    0x00007faded23ca3d  ;*ifne
                        ││                                                    ; - com.google.re2j.Machine::match@279 (line 237)
  0.06%    0.05%        ││      0x00007faded23c138: test   %r8d,%r8d
                        ││      0x00007faded23c13b: jne    0x00007faded23cb2d  ;*ifeq
                        ││                                                    ; - com.google.re2j.Machine::match@286 (line 240)
  0.44%    0.62%        ││      0x00007faded23c141: vmovq  %xmm0,%r9
  0.22%    0.26%        ││      0x00007faded23c146: mov    0x18(%r9),%r11d    ;*getfield prog
                        ││                                                    ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%    0.01%        ││      0x00007faded23c14a: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                        ││                                                    ; - com.google.re2j.Machine::match@300 (line 243)
                        ││                                                    ; implicit exception: dispatches to 0x00007faded23da11
  0.10%    0.09%        ││      0x00007faded23c14f: vmovsd %xmm0,0x50(%rsp)
  0.48%    0.56%        ││      0x00007faded23c155: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007faded23da21
  0.25%    0.22%        ││      0x00007faded23c15a: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        ││      0x00007faded23c161: jne    0x00007faded23c945
  0.16%    0.15%        ││      0x00007faded23c167: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
                        ││      0x00007faded23c16b: mov    0x18(%r10),%ecx    ;*getfield pc
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.41%    0.51%        ││      0x00007faded23c16f: cmp    $0x40,%ecx
                        ││      0x00007faded23c172: jg     0x00007faded23cb71  ;*if_icmpgt
                        ││                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.25%    0.29%        ││      0x00007faded23c178: mov    %r10,%r11
  0.04%    0.05%        ││      0x00007faded23c17b: mov    $0x1,%r10d
           0.00%        ││      0x00007faded23c181: mov    %ecx,%edx
  0.38%    0.54%        ││      0x00007faded23c183: shl    %cl,%r10           ;*lshl
                        ││                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.57%    0.69%        ││      0x00007faded23c186: mov    0x38(%rsp),%r9d
  0.26%    0.31%        ││      0x00007faded23c18b: mov    0x10(%r12,%r9,8),%r9  ;*getfield pcsl
                        ││                                                    ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.23%    0.14%        ││      0x00007faded23c190: mov    %r9,%rcx
  0.06%    0.02%        ││      0x00007faded23c193: and    %r10,%rcx          ;*land
                        ││                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.25%    0.24%        ││      0x00007faded23c196: test   %rcx,%rcx
                        ││      0x00007faded23c199: jne    0x00007faded23c806  ;*ifeq
                        ││                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.30%    0.24%        ││      0x00007faded23c19f: xor    %ebp,%ebp          ;*ireturn
                        ││                                                    ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.14%    0.09%        ││      0x00007faded23c1a1: test   %rcx,%rcx
                        ││      0x00007faded23c1a4: jne    0x00007faded23cbc1  ;*ifeq
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.25%    0.11%        ││      0x00007faded23c1aa: cmp    $0x40,%edx
                        ││      0x00007faded23c1ad: jge    0x00007faded23cc15  ;*if_icmpge
                        ││                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.08%    0.03%        ││      0x00007faded23c1b3: mov    0x38(%rsp),%ecx
  0.29%    0.18%        ││      0x00007faded23c1b7: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                        ││                                                    ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.24%    0.07%        ││      0x00007faded23c1bc: mov    0xc(%r12,%rcx,8),%edx  ;*getfield size
                        ││                                                    ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.16%    0.15%        ││      0x00007faded23c1c1: mov    0x20(%r12,%rcx,8),%r8d  ;*getfield denseThreadsInstructions
                        ││                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.04%    0.04%        ││      0x00007faded23c1c6: or     %r9,%r10
  0.26%    0.27%        ││      0x00007faded23c1c9: mov    %r10,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.17%    0.16%        ││      0x00007faded23c1ce: mov    %edx,%r9d
  0.22%    0.29%        ││      0x00007faded23c1d1: inc    %r9d
  0.06%    0.10%        ││      0x00007faded23c1d4: mov    %r9d,0xc(%r12,%rcx,8)  ;*putfield size
                        ││                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.29%    0.20%        ││      0x00007faded23c1d9: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007faded23da45
  0.13%    0.15%        ││      0x00007faded23c1de: mov    %edx,%r10d
  0.25%    0.26%        ││      0x00007faded23c1e1: cmp    %ecx,%edx
                        ││      0x00007faded23c1e3: jae    0x00007faded23c88f
  0.08%    0.06%        ││      0x00007faded23c1e9: mov    0x8(%r12,%r8,8),%ecx
  0.23%    0.21%        ││      0x00007faded23c1ee: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        ││      0x00007faded23c1f4: jne    0x00007faded23c999  ;*aastore
                        ││                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                    ; - com.google.re2j.Machine::match@318 (line 243)
  0.15%    0.06%        ││      0x00007faded23c1fa: test   %edi,%edi
                    ╭   ││      0x00007faded23c1fc: jl     0x00007faded23c2ac  ;*ifge
                    │   ││                                                    ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │   ││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.15%    │   ││      0x00007faded23c202: xor    %r9d,%r9d          ;*iload_0
                    │   ││                                                    ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │   ││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.04%    │   ││↗     0x00007faded23c205: cmp    $0xa,%edi
                    │   │││     0x00007faded23c208: je     0x00007faded23c76e  ;*iload_1
                    │   │││                                                   ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.26%    0.16%    │   │││     0x00007faded23c20e: mov    %ebx,%edx
  0.17%    0.07%    │   │││     0x00007faded23c210: test   %ebx,%ebx
                    │╭  │││     0x00007faded23c212: jl     0x00007faded23c2b7  ;*iload_1
                    ││  │││                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││  │││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.22%    ││  │││↗    0x00007faded23c218: cmp    $0xa,%ebx
                    ││  ││││    0x00007faded23c21b: je     0x00007faded23c777  ;*iload_0
                    ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││  ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.12%    ││  ││││    0x00007faded23c221: mov    %r10d,%ebx
  0.25%    0.33%    ││  ││││    0x00007faded23c224: mov    %edx,%r10d
  0.14%    0.14%    ││  ││││    0x00007faded23c227: mov    %r13d,%ecx
  0.18%    0.28%    ││  ││││    0x00007faded23c22a: add    0x28(%rsp),%ecx    ;*iadd
                    ││  ││││                                                  ; - com.google.re2j.Machine::match@340 (line 246)
  0.06%    0.08%    ││  ││││    0x00007faded23c22e: mov    %ecx,0x14(%rsp)
  0.24%    0.20%    ││  ││││    0x00007faded23c232: shr    $0x3,%r11          ;*aastore
                    ││  ││││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││  ││││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││  ││││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.19%    0.20%    ││  ││││    0x00007faded23c236: mov    %edi,%ecx
  0.19%    0.33%    ││  ││││    0x00007faded23c238: add    $0xffffffbf,%ecx
  0.09%    0.05%    ││  ││││    0x00007faded23c23b: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                    ││  ││││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││  ││││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││  ││││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.27%    0.26%    ││  ││││    0x00007faded23c23f: lea    0x10(%r8,%rbx,4),%r8
  0.14%    0.18%    ││  ││││    0x00007faded23c244: mov    %r11d,(%r8)
  0.86%    1.16%    ││  ││││    0x00007faded23c247: mov    %r10d,%r11d
  0.05%    0.06%    ││  ││││    0x00007faded23c24a: add    $0xffffffbf,%r11d
  0.22%    0.15%    ││  ││││    0x00007faded23c24e: shr    $0x9,%r8
  0.11%    0.09%    ││  ││││    0x00007faded23c252: movabs $0x7fadfd5fa000,%rbx
  0.35%    0.44%    ││  ││││    0x00007faded23c25c: mov    %r12b,(%rbx,%r8,1)  ;*invokevirtual endPos
                    ││  ││││                                                  ; - com.google.re2j.Machine::match@348 (line 246)
  0.45%    0.49%    ││  ││││    0x00007faded23c260: cmp    $0x1a,%ecx
                    ││╭ ││││    0x00007faded23c263: jb     0x00007faded23c273  ;*if_icmple
                    │││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.12%    │││ ││││    0x00007faded23c265: mov    %edi,%ecx
  0.08%    0.09%    │││ ││││    0x00007faded23c267: add    $0xffffff9f,%ecx
  0.32%    0.38%    │││ ││││    0x00007faded23c26a: cmp    $0x1a,%ecx
                    │││ ││││    0x00007faded23c26d: jae    0x00007faded23c7e5  ;*iconst_1
                    │││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.20%    0.18%    ││↘ ││││    0x00007faded23c273: mov    $0x1,%ebp          ;*ireturn
                    ││  ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.16%    ││  ││││    0x00007faded23c278: cmp    $0x1a,%r11d
                    ││ ╭││││    0x00007faded23c27c: jb     0x00007faded23c28f  ;*if_icmple
                    ││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.11%    ││ │││││    0x00007faded23c27e: mov    %r10d,%r8d
  0.26%    0.34%    ││ │││││    0x00007faded23c281: add    $0xffffff9f,%r8d
  0.17%    0.21%    ││ │││││    0x00007faded23c285: cmp    $0x1a,%r8d
                    ││ │││││    0x00007faded23c289: jae    0x00007faded23c7c2  ;*iconst_1
                    ││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.19%    ││ ↘││││    0x00007faded23c28f: mov    $0x1,%r11d         ;*ireturn
                    ││  ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.24%    ││  ││││    0x00007faded23c295: cmp    %r11d,%ebp
                    ││  ╰│││    0x00007faded23c298: je     0x00007faded23bf95  ;*if_icmpeq
                    ││   │││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││   │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.14%    ││   │││    0x00007faded23c29e: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││   │││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.02%    ││   │││    0x00007faded23c2a2: mov    %r9d,0x2c(%rsp)
  0.41%    0.62%    ││   ╰││    0x00007faded23c2a7: jmpq   0x00007faded23bf9e
                    ↘│    ││    0x00007faded23c2ac: mov    $0x5,%r9d
                     │    ╰│    0x00007faded23c2b2: jmpq   0x00007faded23c205
  0.00%    0.00%     ↘     │    0x00007faded23c2b7: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                  ; - com.google.re2j.Machine::match@326 (line 245)
                           ╰    0x00007faded23c2bb: jmpq   0x00007faded23c218
           0.00%                0x00007faded23c2c0: mov    %r9d,0x50(%rsp)
  0.02%    0.02%                0x00007faded23c2c5: jmpq   0x00007faded23c535
                                0x00007faded23c2ca: mov    0x50(%rsp),%r11d
                                0x00007faded23c2cf: add    $0x2,%r11d
                                0x00007faded23c2d3: mov    %r11d,0x50(%rsp)
  0.00%                         0x00007faded23c2d8: mov    0x50(%rsp),%r11d
  0.00%    0.00%                0x00007faded23c2dd: inc    %r11d
                                0x00007faded23c2e0: mov    %r11d,0x44(%rsp)
  0.01%                     ╭   0x00007faded23c2e5: jmp    0x00007faded23c312
           0.00%            │   0x00007faded23c2e7: mov    0x50(%rsp),%r11d
           0.00%            │   0x00007faded23c2ec: add    $0x2,%r11d
                            │   0x00007faded23c2f0: mov    %r11d,0x44(%rsp)
                            │╭  0x00007faded23c2f5: jmp    0x00007faded23c305
                            ││  0x00007faded23c2f7: mov    0x50(%rsp),%r11d
                            ││  0x00007faded23c2fc: add    $0x2,%r11d
                            ││  0x00007faded23c300: mov    %r11d,0x50(%rsp)
                            │↘  0x00007faded23c305: mov    0x50(%rsp),%r11d
  0.00%                     │   0x00007faded23c30a: inc    %r11d              ;*iinc
                            │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                            │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                            │   0x00007faded23c30d: mov    %r11d,0x50(%rsp)
  0.00%                     ↘   0x00007faded23c312: mov    0x50(%rsp),%r11d
                                0x00007faded23c317: cmp    0x28(%rsp),%r11d
                                0x00007faded23c31c: jg     0x00007faded23c381
                                0x00007faded23c31e: mov    0x50(%rsp),%r11d
                                0x00007faded23c323: add    0x34(%rsp),%r11d   ;*iadd
                                                                              ; - java.lang.String::indexOf@101 (line 1777)
                                                                              ; - java.lang.String::indexOf@21 (line 1718)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                              ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%                         0x00007faded23c328: mov    %r11d,%r9d
                                0x00007faded23c32b: mov    0x44(%rsp),%r11d
  0.00%                         0x00007faded23c330: cmp    %r9d,%r11d
                                0x00007faded23c333: jge    0x00007faded23c373  ;*if_icmpge
                                                                              ; - java.lang.String::indexOf@123 (line 1779)
                                                                              ; - java.lang.String::indexOf@21 (line 1718)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                              ; - com.google.re2j.Machine::match@206 (line 224)
                                0x00007faded23c335: cmp    0x2c(%rsp),%r11d
                                0x00007faded23c33a: jae    0x00007faded23ce68
                                0x00007faded23c340: movzwl 0x10(%rdx,%r11,2),%r11d  ;*caload
                                                                              ; - java.lang.String::indexOf@129 (line 1779)
....................................................................................................
 32.65%   34.51%  <total for region 2>

....[Hottest Regions]...............................................................................
 47.85%   45.92%         C2, level 4  com.google.re2j.Machine::step, version 498 (910 bytes) 
 32.65%   34.51%         C2, level 4  com.google.re2j.Machine::match, version 540 (1194 bytes) 
  7.80%    8.35%         C2, level 4  com.google.re2j.Machine::step, version 498 (339 bytes) 
  6.28%    6.67%         C2, level 4  com.google.re2j.Machine::step, version 498 (106 bytes) 
  0.92%    1.23%         C2, level 4  com.google.re2j.Machine::match, version 540 (63 bytes) 
  0.55%    0.54%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.36%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 555 (155 bytes) 
  0.17%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 555 (28 bytes) 
  0.15%    0.16%         C2, level 4  com.google.re2j.Machine::match, version 540 (253 bytes) 
  0.14%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 540 (325 bytes) 
  0.13%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 555 (0 bytes) 
  0.11%    0.13%         C2, level 4  com.google.re2j.Machine::match, version 540 (186 bytes) 
  0.11%    0.12%         C2, level 4  com.google.re2j.RE2::match, version 555 (33 bytes) 
  0.11%    0.05%         C2, level 4  java.util.Collections::shuffle, version 565 (193 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (39 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.09%    0.09%         C2, level 4  java.util.Collections::shuffle, version 565 (24 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 555 (183 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 555 (5 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 555 (59 bytes) 
  2.14%    1.84%  <...other 355 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 61.93%   60.94%         C2, level 4  com.google.re2j.Machine::step, version 498 
 34.16%   36.19%         C2, level 4  com.google.re2j.Machine::match, version 540 
  1.63%    1.36%   [kernel.kallsyms]  [unknown] 
  1.19%    0.43%         C2, level 4  com.google.re2j.RE2::match, version 555 
  0.25%    0.14%         C2, level 4  java.util.Collections::shuffle, version 565 
  0.11%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 597 
  0.08%    0.03%              [vdso]  [unknown] 
  0.03%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.07%      hsdis-amd64.so  [unknown] 
  0.02%    0.03%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 563 
  0.02%    0.02%        libc-2.26.so  __strchr_avx2 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.01%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.05%        libc-2.26.so  vfprintf 
  0.01%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.01%    0.00%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.01%           libpthread-2.26.so  __libc_write 
  0.01%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.01%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.38%    0.25%  <...other 61 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 97.66%   97.74%         C2, level 4
  1.63%    1.36%   [kernel.kallsyms]
  0.33%    0.47%           libjvm.so
  0.16%    0.27%        libc-2.26.so
  0.08%    0.03%              [vdso]
  0.06%    0.03%  libpthread-2.26.so
  0.03%    0.07%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.00%               perf-15551.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  22171.639 ± 19.596  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
