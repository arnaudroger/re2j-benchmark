# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9929.422 ops/s
# Warmup Iteration   2: 27547.168 ops/s
# Warmup Iteration   3: 28011.665 ops/s
# Warmup Iteration   4: 28035.033 ops/s
# Warmup Iteration   5: 27525.940 ops/s
# Warmup Iteration   6: 27644.287 ops/s
# Warmup Iteration   7: 28322.824 ops/s
# Warmup Iteration   8: 28362.277 ops/s
# Warmup Iteration   9: 28286.230 ops/s
# Warmup Iteration  10: 28267.462 ops/s
# Warmup Iteration  11: 27958.959 ops/s
# Warmup Iteration  12: 28177.776 ops/s
# Warmup Iteration  13: 28772.724 ops/s
# Warmup Iteration  14: 28682.299 ops/s
# Warmup Iteration  15: 28695.038 ops/s
# Warmup Iteration  16: 28611.456 ops/s
# Warmup Iteration  17: 28405.774 ops/s
# Warmup Iteration  18: 28331.499 ops/s
# Warmup Iteration  19: 28754.058 ops/s
# Warmup Iteration  20: 28705.442 ops/s
Iteration   1: 28596.295 ops/s
Iteration   2: 28505.851 ops/s
Iteration   3: 28578.087 ops/s
Iteration   4: 27572.191 ops/s
Iteration   5: 28104.474 ops/s
Iteration   6: 28247.798 ops/s
Iteration   7: 28218.455 ops/s
Iteration   8: 28264.677 ops/s
Iteration   9: 28234.085 ops/s
Iteration  10: 28748.859 ops/s
Iteration  11: 28636.311 ops/s
Iteration  12: 28737.686 ops/s
Iteration  13: 28854.976 ops/s
Iteration  14: 28753.422 ops/s
Iteration  15: 28494.904 ops/s
Iteration  16: 27719.151 ops/s
Iteration  17: 27953.757 ops/s
Iteration  18: 28130.001 ops/s
Iteration  19: 28135.697 ops/s
Iteration  20: 28069.916 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  28327.830 ±(99.9%) 308.541 ops/s [Average]
  (min, avg, max) = (27572.191, 28327.830, 28854.976), stdev = 355.316
  CI (99.9%): [28019.289, 28636.370] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 203419 total address lines.
Perf output processed (skipped 23.603 seconds):
 Column 1: cycles (20482 events)
 Column 2: instructions (20483 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 522 (913 bytes) 

                      0x00007f4a39235d2f: shr    $0x9,%r11
                      0x00007f4a39235d33: movabs $0x7f4a34a2e000,%r10
                      0x00007f4a39235d3d: mov    %r12b,(%r10,%r11,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
                      0x00007f4a39235d41: mov    %rax,%r11          ;*synchronization entry
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.09%   ↗  0x00007f4a39235d44: mov    0x28(%rsp),%r13
  0.05%    0.04%   │  0x00007f4a39235d49: mov    0xac(%rsp),%r9d
  0.09%    0.05%   │  0x00007f4a39235d51: mov    0xc(%rsp),%r14d
  0.45%    0.28%   │  0x00007f4a39235d56: mov    0x30(%rsp),%rbx
  0.10%    0.13%   │  0x00007f4a39235d5b: mov    0xa4(%rsp),%edi
  0.07%    0.05%   │  0x00007f4a39235d62: mov    0x38(%rsp),%r10d   ;*aload
                   │                                                ; - com.google.re2j.Machine::step@215 (line 318)
  2.54%    2.53%  ↗│  0x00007f4a39235d67: inc    %r10d              ;*iinc
                  ││                                                ; - com.google.re2j.Machine::step@226 (line 284)
  0.46%    0.38%  ││  0x00007f4a39235d6a: cmp    %r9d,%r10d
                  ││  0x00007f4a39235d6d: jge    0x00007f4a392361e2
  0.34%    0.31%  ││  0x00007f4a39235d73: mov    %r11,%rax          ;*iload
                  ││                                                ; - com.google.re2j.Machine::step@37 (line 287)
  0.61%    0.49%  ││  0x00007f4a39235d76: mov    0x10(%rbx,%r10,4),%r8d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine::step@95 (line 297)
  1.79%    1.69%  ││  0x00007f4a39235d7b: mov    0xc(%r12,%r8,8),%r11d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::step@100 (line 299)
                  ││                                                ; implicit exception: dispatches to 0x00007f4a3923701d
  1.66%    1.61%  ││  0x00007f4a39235d80: cmp    $0x6,%r11d
                  ││  0x00007f4a39235d84: je     0x00007f4a392362cc  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Machine::step@105 (line 299)
  0.79%    0.62%  ││  0x00007f4a39235d8a: cmp    $0xa,%r11d
                  ││  0x00007f4a39235d8e: jne    0x00007f4a3923616f  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││                                                ; - com.google.re2j.Machine::step@187 (line 314)
  0.10%    0.14%  ││  0x00007f4a39235d94: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::step@195 (line 315)
  0.13%    0.04%  ││  0x00007f4a39235d99: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f4a3923702d
  1.04%    0.81%  ││  0x00007f4a39235d9e: lea    (%r12,%r11,8),%r8
  0.15%    0.20%  ││  0x00007f4a39235da2: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ││  0x00007f4a39235da8: jne    0x00007f4a39236214  ;*invokevirtual add
                  ││                                                ; - com.google.re2j.Machine::step@210 (line 315)
  0.29%    0.23%  ││  0x00007f4a39235dae: mov    0x18(%r8),%ecx     ;*getfield pc
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.12%  ││  0x00007f4a39235db2: mov    %rax,%r11
  0.22%    0.37%  ││  0x00007f4a39235db5: mov    0x10(%rax),%rsi    ;*getfield pcsl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  ││                                                ; implicit exception: dispatches to 0x00007f4a39237041
  0.14%    0.17%  ││  0x00007f4a39235db9: cmp    $0x40,%ecx
                  ││  0x00007f4a39235dbc: jg     0x00007f4a39236555  ;*if_icmpgt
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.32%  ││  0x00007f4a39235dc2: mov    $0x1,%edx
  0.06%    0.06%  ││  0x00007f4a39235dc7: shl    %cl,%rdx           ;*lshl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.92%    1.23%  ││  0x00007f4a39235dca: mov    %rsi,%rax
  0.00%    0.06%  ││  0x00007f4a39235dcd: and    %rdx,%rax
  0.31%    0.25%  ││  0x00007f4a39235dd0: test   %rax,%rax
                  ╰│  0x00007f4a39235dd3: jne    0x00007f4a39235d67  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.48%   │  0x00007f4a39235dd5: cmp    $0x40,%ecx
                   │  0x00007f4a39235dd8: jge    0x00007f4a392365b5  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.08%   │  0x00007f4a39235dde: mov    %r12b,0x18(%r11)   ;*putfield empty
                   │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.03%   │  0x00007f4a39235de2: mov    0x2c(%r8),%ebp     ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.23%   │  0x00007f4a39235de6: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.35%   │  0x00007f4a39235de9: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.05%   │  0x00007f4a39235ded: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f4a39237055
  0.93%    0.88%   │  0x00007f4a39235df2: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007f4a39235df8: jne    0x00007f4a39236371
  0.60%    0.62%   │  0x00007f4a39235dfe: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%   │  0x00007f4a39235e02: mov    0x18(%rax),%ecx    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.09%   │  0x00007f4a39235e05: cmp    $0x40,%ecx
                   │  0x00007f4a39235e08: jg     0x00007f4a39236611  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.30%   │  0x00007f4a39235e0e: mov    $0x1,%esi
  0.31%    0.41%   │  0x00007f4a39235e13: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.83%    0.90%   │  0x00007f4a39235e16: mov    %rdx,%rbp
  0.09%    0.15%   │  0x00007f4a39235e19: and    %rsi,%rbp          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.10%   │  0x00007f4a39235e1c: test   %rbp,%rbp
                   │  0x00007f4a39235e1f: jne    0x00007f4a39236675  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.37%   │  0x00007f4a39235e25: cmp    $0x40,%ecx
                   │  0x00007f4a39235e28: jge    0x00007f4a392366e1  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.22%   │  0x00007f4a39235e2e: vmovq  %rax,%xmm0
  0.16%    0.17%   │  0x00007f4a39235e33: mov    %r8,%rcx
  0.05%    0.04%   │  0x00007f4a39235e36: mov    %r10d,0x38(%rsp)
  0.30%    0.28%   │  0x00007f4a39235e3b: mov    %edi,0xa4(%rsp)
  0.21%    0.27%   │  0x00007f4a39235e42: mov    %rbx,0x30(%rsp)
  0.15%    0.06%   │  0x00007f4a39235e47: mov    %r14d,0xc(%rsp)
  0.04%    0.01%   │  0x00007f4a39235e4c: mov    %r9d,0xac(%rsp)
  0.38%    0.35%   │  0x00007f4a39235e54: mov    %r11,%rax
  0.28%    0.21%   │  0x00007f4a39235e57: mov    %r13,0x28(%rsp)
  0.11%    0.10%   │  0x00007f4a39235e5c: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%   │  0x00007f4a39235e5f: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.31%   │  0x00007f4a39235e63: mov    0x20(%rax),%r10d   ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.17%   │  0x00007f4a39235e67: mov    %r10d,%r14d
  0.12%    0.11%   │  0x00007f4a39235e6a: mov    0xc(%rax),%r10d    ;*getfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%   │  0x00007f4a39235e6e: mov    %r10d,%r13d
  0.29%    0.30%   │  0x00007f4a39235e71: inc    %r10d              ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.15%   │  0x00007f4a39235e74: mov    %r10d,0xc(%rax)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.14%   │  0x00007f4a39235e78: vmovd  %r10d,%xmm1
  0.02%    0.05%   │  0x00007f4a39235e7d: mov    %r14d,%r10d
  0.31%    0.34%   │  0x00007f4a39235e80: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f4a39237069
  0.21%    0.26%   │  0x00007f4a39235e85: mov    %r13d,%r10d
  0.16%    0.16%   │  0x00007f4a39235e88: cmp    %r11d,%r10d
                   │  0x00007f4a39235e8b: jae    0x00007f4a39236335
  0.04%    0.07%   │  0x00007f4a39235e91: mov    %r14d,%r10d
  0.28%    0.40%   │  0x00007f4a39235e94: mov    0x8(%r12,%r10,8),%r8d
  0.28%    0.32%   │  0x00007f4a39235e99: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  0x00007f4a39235ea0: jne    0x00007f4a392363d1  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.18%   │  0x00007f4a39235ea6: mov    0x34(%rcx),%r10d   ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.07%   │  0x00007f4a39235eaa: vmovd  %r10d,%xmm2
  0.26%    0.30%   │  0x00007f4a39235eaf: vmovq  %xmm0,%r10
  0.27%    0.16%   │  0x00007f4a39235eb4: mov    %r10,%r9
  0.13%    0.15%   │  0x00007f4a39235eb7: shr    $0x3,%r9           ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%   │  0x00007f4a39235ebb: mov    %r14d,%r10d
  0.26%    0.22%   │  0x00007f4a39235ebe: lea    (%r12,%r10,8),%r8  ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.25%    0.10%   │  0x00007f4a39235ec2: mov    %r13d,%r10d
  0.11%    0.14%   │  0x00007f4a39235ec5: lea    0x10(%r8,%r10,4),%r10
  0.07%    0.06%   │  0x00007f4a39235eca: mov    %r9d,(%r10)
  0.32%    0.28%   │  0x00007f4a39235ecd: shr    $0x9,%r10
  0.28%    0.21%   │  0x00007f4a39235ed1: movabs $0x7f4a34a2e000,%r9
  0.11%    0.20%   │  0x00007f4a39235edb: mov    %r12b,(%r9,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.20%   │  0x00007f4a39235edf: vmovd  %xmm2,%r10d
  0.18%    0.28%   │  0x00007f4a39235ee4: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │                                                ; implicit exception: dispatches to 0x00007f4a39237085
  0.30%    0.28%   │  0x00007f4a39235ee9: movslq %r13d,%r9
  0.11%    0.17%   │  0x00007f4a39235eec: lea    (%r8,%r9,4),%r9    ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.11%   │  0x00007f4a39235ef0: mov    %r9,%rdi
  0.25%    0.31%   │  0x00007f4a39235ef3: add    $0x14,%rdi         ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.18%   │  0x00007f4a39235ef7: vmovd  %xmm2,%ecx
  0.13%    0.11%   │  0x00007f4a39235efb: lea    (%r12,%rcx,8),%rsi
  0.06%    0.09%   │  0x00007f4a39235eff: mov    %r13d,%ebx
  0.34%    0.19%   │  0x00007f4a39235f02: add    $0x2,%ebx          ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.07%   │  0x00007f4a39235f05: cmp    $0xf8019885,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007f4a39235f0c: jne    0x00007f4a39235cc4  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.04%   │  0x00007f4a39235f12: vmovq  %rsi,%xmm0
  0.10%    0.06%   │  0x00007f4a39235f17: mov    0x18(%rsi),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.17%   │  0x00007f4a39235f1b: mov    %r10d,%ecx
  0.19%    0.12%   │  0x00007f4a39235f1e: cmp    $0x40,%r10d
                   │  0x00007f4a39235f22: jg     0x00007f4a39236895  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.17%   │  0x00007f4a39235f28: mov    $0x1,%esi
  0.14%    0.17%   │  0x00007f4a39235f2d: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.62%    0.46%   │  0x00007f4a39235f30: mov    %rdx,%r10
  0.08%    0.07%   │  0x00007f4a39235f33: and    %rsi,%r10          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.34%   │  0x00007f4a39235f36: test   %r10,%r10
                   │  0x00007f4a39235f39: jne    0x00007f4a392368c9  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.35%   │  0x00007f4a39235f3f: mov    %ecx,%r10d
  0.16%    0.18%   │  0x00007f4a39235f42: cmp    $0x40,%r10d
                   │  0x00007f4a39235f46: jge    0x00007f4a39236911  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.10%   │  0x00007f4a39235f4c: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.32%    0.10%   │  0x00007f4a39235f4f: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.03%   │  0x00007f4a39235f53: vmovq  %xmm0,%r10
  0.09%    0.04%   │  0x00007f4a39235f58: mov    0x2c(%r10),%ebp    ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.11%   │  0x00007f4a39235f5c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4a392370b9
  0.26%    0.24%   │  0x00007f4a39235f61: cmp    $0xf8019843,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   │  0x00007f4a39235f68: jne    0x00007f4a39236505
  0.21%    0.30%   │  0x00007f4a39235f6e: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.19%   │  0x00007f4a39235f72: vmovq  %r10,%xmm0
  0.07%    0.09%   │  0x00007f4a39235f77: mov    0x18(%r10),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.41%   │  0x00007f4a39235f7b: vmovd  %r10d,%xmm2
  0.25%    0.30%   │  0x00007f4a39235f80: cmp    $0x40,%r10d
                   │  0x00007f4a39235f84: jg     0x00007f4a39236a69  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.12%   │  0x00007f4a39235f8a: mov    $0x1,%esi
  0.09%    0.09%   │  0x00007f4a39235f8f: mov    %r10d,%ecx
  0.29%    0.23%   │  0x00007f4a39235f92: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.66%   │  0x00007f4a39235f95: mov    %rdx,%r10
  0.18%    0.15%   │  0x00007f4a39235f98: and    %rsi,%r10
  0.16%    0.17%   │  0x00007f4a39235f9b: test   %r10,%r10
                   │  0x00007f4a39235f9e: jne    0x00007f4a392362c4  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.17%   │  0x00007f4a39235fa4: mov    %ecx,%r10d
  0.12%    0.21%   │  0x00007f4a39235fa7: cmp    $0x40,%r10d
                   │  0x00007f4a39235fab: jge    0x00007f4a39236aa1  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.21%   │  0x00007f4a39235fb1: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.23%   │  0x00007f4a39235fb4: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.21%   │  0x00007f4a39235fb8: vmovq  %xmm0,%r10
  0.18%    0.18%   │  0x00007f4a39235fbd: mov    0x2c(%r10),%ebp    ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.31%   │  0x00007f4a39235fc1: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4a392370cd
  0.80%    0.92%   │  0x00007f4a39235fc6: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007f4a39235fcd: jne    0x00007f4a39236529
  0.41%    0.54%   │  0x00007f4a39235fd3: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%   │  0x00007f4a39235fd7: vmovq  %r10,%xmm2
  0.05%    0.06%   │  0x00007f4a39235fdc: mov    0x18(%r10),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.29%   │  0x00007f4a39235fe0: mov    %r10d,%ecx
  0.49%    0.49%   │  0x00007f4a39235fe3: cmp    $0x40,%r10d
                   │  0x00007f4a39235fe7: jg     0x00007f4a39236ad5  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.17%   │  0x00007f4a39235fed: mov    $0x1,%esi
  0.06%    0.16%   │  0x00007f4a39235ff2: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.19%    1.16%   │  0x00007f4a39235ff5: mov    %rdx,%r10
  0.06%    0.07%   │  0x00007f4a39235ff8: and    %rsi,%r10          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.08%   │  0x00007f4a39235ffb: test   %r10,%r10
                   │  0x00007f4a39235ffe: jne    0x00007f4a39236b11  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.46%    0.45%   │  0x00007f4a39236004: mov    %ecx,%r10d
  0.19%    0.11%   │  0x00007f4a39236007: cmp    $0x40,%r10d
                   │  0x00007f4a3923600b: jge    0x00007f4a39236b61  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.10%   │  0x00007f4a39236011: mov    %ebx,0xc(%rax)     ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.09%   │  0x00007f4a39236014: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.44%   │  0x00007f4a39236017: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.10%   │  0x00007f4a3923601b: cmp    %r11d,%ebx
                   │  0x00007f4a3923601e: jae    0x00007f4a3923649d  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%   │  0x00007f4a39236024: vmovq  %xmm0,%r10
  0.11%    0.10%   │  0x00007f4a39236029: mov    0x34(%r10),%r10d   ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.44%   │  0x00007f4a3923602d: mov    %r10d,%ebx
  0.08%    0.15%   │  0x00007f4a39236030: mov    %rdi,%r11
  0.04%    0.07%   │  0x00007f4a39236033: vmovq  %xmm2,%r10
  0.06%    0.08%   │  0x00007f4a39236038: shr    $0x3,%r10
  0.39%    0.50%   │  0x00007f4a3923603c: mov    %r10d,(%rdi)
  0.13%    0.11%   │  0x00007f4a3923603f: shr    $0x9,%r11
  0.03%    0.07%   │  0x00007f4a39236043: movabs $0x7f4a34a2e000,%r10
  0.09%    0.12%   │  0x00007f4a3923604d: mov    %r12b,(%r10,%r11,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.41%    0.47%   │  0x00007f4a39236051: mov    0x8(%r12,%rbx,8),%r11d  ; implicit exception: dispatches to 0x00007f4a392370e1
  0.10%    0.15%   │  0x00007f4a39236056: lea    (%r12,%rbx,8),%r10
  0.07%    0.12%   │  0x00007f4a3923605a: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007f4a39236061: je     0x00007f4a392360da
  0.09%    0.10%   │  0x00007f4a39236063: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007f4a3923606a: jne    0x00007f4a39236845  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.48%   │  0x00007f4a39236070: mov    0x18(%r10),%ecx    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.15%   │  0x00007f4a39236074: cmp    $0x40,%ecx
                   │  0x00007f4a39236077: jg     0x00007f4a39236c49  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.11%   │  0x00007f4a3923607d: mov    %r10,%rbx
  0.06%    0.10%   │  0x00007f4a39236080: mov    $0x1,%edi
  0.41%    0.45%   │  0x00007f4a39236085: shl    %cl,%rdi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.26%   │  0x00007f4a39236088: mov    %rdx,%r11
  0.47%    0.49%   │  0x00007f4a3923608b: and    %rdi,%r11          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.18%   │  0x00007f4a3923608e: test   %r11,%r11
                   │  0x00007f4a39236091: jne    0x00007f4a39236ca5  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%   │  0x00007f4a39236097: cmp    $0x40,%ecx
                   │  0x00007f4a3923609a: jge    0x00007f4a39236d0d  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.12%   │  0x00007f4a392360a0: or     %rdi,%rdx
  0.47%    0.44%   │  0x00007f4a392360a3: mov    %rax,%r11
  0.12%    0.14%   │  0x00007f4a392360a6: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.07%   │  0x00007f4a392360aa: add    $0x18,%r9
  0.08%    0.12%   │  0x00007f4a392360ae: mov    %rbx,%r10
  0.45%    0.55%   │  0x00007f4a392360b1: shr    $0x3,%r10
  0.14%    0.15%   │  0x00007f4a392360b5: mov    %r10d,(%r9)        ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.12%   │  0x00007f4a392360b8: mov    %r9,%r10
  0.06%    0.12%   │  0x00007f4a392360bb: add    $0x3,%r13d
  0.38%    0.37%   │  0x00007f4a392360bf: mov    %r13d,0xc(%rax)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.16%   │  0x00007f4a392360c3: shr    $0x9,%r10
  0.06%    0.07%   │  0x00007f4a392360c7: movabs $0x7f4a34a2e000,%r8
  0.04%    0.09%   │  0x00007f4a392360d1: mov    %r12b,(%r8,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.41%    0.38%   ╰  0x00007f4a392360d5: jmpq   0x00007f4a39235d44
                      0x00007f4a392360da: mov    %r10,%r9           ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 44.83%   46.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 560 (861 bytes) 

                                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                          ; - com.google.re2j.Machine::match@121 (line 205)
                            0x00007f4a392529e4: mov    0x3c(%rsp),%r11d
                            0x00007f4a392529e9: test   %r11d,%r11d
                            0x00007f4a392529ec: jne    0x00007f4a39253b1d  ;*aload
                                                                          ; - com.google.re2j.Machine::match@136 (line 211)
                            0x00007f4a392529f2: mov    0x40(%rsp),%r11
                            0x00007f4a392529f7: movzbl 0x11(%r11),%r11d   ;*getfield captures
                                                                          ; - com.google.re2j.Machine::match@283 (line 240)
                            0x00007f4a392529fc: mov    %rcx,%r8
  0.00%                     0x00007f4a392529ff: shl    $0x3,%r8           ;*getfield q1
                                                                          ; - com.google.re2j.Machine::match@53 (line 192)
  0.01%                     0x00007f4a39252a03: mov    %r8,0x68(%rsp)
           0.00%            0x00007f4a39252a08: xor    %eax,%eax
           0.00%            0x00007f4a39252a0a: mov    $0x1,%r9d
                            0x00007f4a39252a10: xor    %r8d,%r8d
           0.00%            0x00007f4a39252a13: mov    %r9d,0x14(%rsp)
                            0x00007f4a39252a18: mov    %r8d,0x60(%rsp)
  0.00%           ╭         0x00007f4a39252a1d: jmpq   0x00007f4a39252ba7
  0.17%    0.07%  │   ↗     0x00007f4a39252a22: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │   │                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%  │   │     0x00007f4a39252a26: mov    %r8d,0x2c(%rsp)    ;*iload_2
                  │   │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │   │                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.12%  │   │↗    0x00007f4a39252a2b: mov    0x60(%rsp),%r8d
  0.33%    0.16%  │   ││    0x00007f4a39252a30: cmp    0x20(%rsp),%r8d
                  │   ││    0x00007f4a39252a35: je     0x00007f4a392531c4  ;*if_icmpne
                  │   ││                                                  ; - com.google.re2j.Machine::match@351 (line 246)
  0.30%    0.15%  │   ││    0x00007f4a39252a3b: xor    %r10d,%r10d        ;*invokespecial step
                  │   ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.09%  │   ││    0x00007f4a39252a3e: mov    %rax,-0x8(%rsp)
  0.16%    0.13%  │   ││    0x00007f4a39252a43: mov    0x60(%rsp),%eax
  0.34%    0.25%  │   ││    0x00007f4a39252a47: mov    %eax,0x34(%rsp)
  0.27%    0.23%  │   ││    0x00007f4a39252a4b: mov    -0x8(%rsp),%rax
  0.67%    0.42%  │   ││    0x00007f4a39252a50: mov    %edx,0x20(%rsp)    ;*invokevirtual endPos
                  │   ││                                                  ; - com.google.re2j.Machine::match@348 (line 246)
  0.12%    0.09%  │   ││    0x00007f4a39252a54: add    0x28(%rsp),%r8d    ;*iadd
                  │   ││                                                  ; - com.google.re2j.Machine::match@340 (line 246)
  0.39%    0.21%  │   ││    0x00007f4a39252a59: mov    %r8d,0x60(%rsp)
  0.28%    0.17%  │   ││    0x00007f4a39252a5e: mov    0x40(%rsp),%rsi
  0.10%    0.07%  │   ││    0x00007f4a39252a63: mov    0x18(%rsp),%rdx
  0.06%    0.05%  │   ││    0x00007f4a39252a68: mov    0x68(%rsp),%rcx
  0.31%    0.22%  │   ││    0x00007f4a39252a6d: mov    0x34(%rsp),%r8d
  0.27%    0.21%  │   ││    0x00007f4a39252a72: mov    0x60(%rsp),%r9d
  0.44%    0.47%  │   ││    0x00007f4a39252a77: mov    0x2c(%rsp),%r11d
  0.06%    0.05%  │   ││    0x00007f4a39252a7c: mov    %r11d,(%rsp)
  0.25%    0.22%  │   ││    0x00007f4a39252a80: xor    %r11d,%r11d
  0.20%    0.05%  │   ││    0x00007f4a39252a83: mov    %r11d,0x8(%rsp)
  0.14%    0.18%  │   ││    0x00007f4a39252a88: mov    %r10d,0x10(%rsp)
  0.07%    0.12%  │   ││    0x00007f4a39252a8d: xchg   %ax,%ax
  0.28%    0.26%  │   ││    0x00007f4a39252a8f: callq  0x00007f4a39046020  ; OopMap{[24]=Oop [56]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=692}
                  │   ││                                                  ;*invokespecial step
                  │   ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                  │   ││                                                  ;   {optimized virtual_call}
  0.00%    0.00%  │   ││    0x00007f4a39252a94: mov    0x40(%rsp),%r10
  0.84%    0.77%  │   ││    0x00007f4a39252a99: movzbl 0x11(%r10),%r11d   ;*getfield captures
                  │   ││                                                  ; - com.google.re2j.Machine::match@371 (line 250)
  0.01%    0.03%  │   ││    0x00007f4a39252a9e: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │   ││                                                  ; - com.google.re2j.Machine::match@378 (line 250)
  0.00%           │   ││    0x00007f4a39252aa3: mov    0x28(%rsp),%r8d
  0.70%    0.92%  │   ││    0x00007f4a39252aa8: test   %r8d,%r8d
                  │   ││    0x00007f4a39252aab: je     0x00007f4a39253184  ;*ifne
                  │   ││                                                  ; - com.google.re2j.Machine::match@364 (line 247)
                  │   ││    0x00007f4a39252ab1: test   %r11d,%r11d
                  │   ││    0x00007f4a39252ab4: jne    0x00007f4a392534fd  ;*ifne
                  │   ││                                                  ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%           │   ││    0x00007f4a39252aba: test   %eax,%eax
                  │   ││    0x00007f4a39252abc: jne    0x00007f4a392536f9  ;*ifeq
                  │   ││                                                  ; - com.google.re2j.Machine::match@381 (line 250)
  0.03%    0.00%  │   ││    0x00007f4a39252ac2: mov    0x50(%rsp),%r8
  0.73%    0.78%  │   ││    0x00007f4a39252ac7: mov    0x10(%r8),%ebx     ;*getfield end
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%           │   ││    0x00007f4a39252acb: mov    0xc(%r8),%ecx      ;*getfield start
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.02%  │   ││    0x00007f4a39252acf: mov    %ecx,0x24(%rsp)
  0.01%    0.00%  │   ││    0x00007f4a39252ad3: mov    0x14(%r8),%r9d     ;*getfield str
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.80%    0.92%  │   ││    0x00007f4a39252ad7: mov    0x20(%rsp),%edi
                  │   ││    0x00007f4a39252adb: cmp    $0xffffffff,%edi
                  │   ││    0x00007f4a39252ade: je     0x00007f4a392531cf  ;*if_icmpeq
                  │   ││                                                  ; - com.google.re2j.Machine::match@403 (line 258)
                  │   ││    0x00007f4a39252ae4: mov    0x30(%rsp),%r8d
  0.01%    0.01%  │   ││    0x00007f4a39252ae9: add    0x60(%rsp),%r8d
  0.70%    0.92%  │   ││    0x00007f4a39252aee: add    %ecx,%r8d          ;*iadd
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
           0.00%  │   ││    0x00007f4a39252af1: cmp    %ebx,%r8d
                  │   ││    0x00007f4a39252af4: jge    0x00007f4a392531de  ;*if_icmpge
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
           0.00%  │   ││    0x00007f4a39252afa: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f4a3925446d
  0.25%    0.16%  │   ││    0x00007f4a39252aff: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │   ││    0x00007f4a39252b06: jne    0x00007f4a39253459
  0.75%    0.90%  │   ││    0x00007f4a39252b0c: lea    (%r12,%r9,8),%rdx  ;*invokeinterface charAt
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                  │   ││    0x00007f4a39252b10: test   %r8d,%r8d
                  │   ││    0x00007f4a39252b13: jl     0x00007f4a39253551  ;*iflt
                  │   ││                                                  ; - java.lang.String::charAt@1 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
           0.00%  │   ││    0x00007f4a39252b19: mov    0xc(%rdx),%ecx     ;*getfield value
                  │   ││                                                  ; - java.lang.String::charAt@6 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%    0.00%  │   ││    0x00007f4a39252b1c: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                  │   ││                                                  ; - java.lang.String::charAt@9 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                  │   ││                                                  ; implicit exception: dispatches to 0x00007f4a39254481
  1.88%    2.40%  │   ││    0x00007f4a39252b21: cmp    %ebp,%r8d
                  │   ││    0x00007f4a39252b24: jge    0x00007f4a3925374d  ;*if_icmplt
                  │   ││                                                  ; - java.lang.String::charAt@10 (line 657)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.36%    0.52%  │   ││    0x00007f4a39252b2a: cmp    %ebp,%r8d
                  │   ││    0x00007f4a39252b2d: jae    0x00007f4a3925334d
  0.10%    0.13%  │   ││    0x00007f4a39252b33: lea    (%r12,%rcx,8),%r10
  0.00%           │   ││    0x00007f4a39252b37: movzwl 0x10(%r10,%r8,2),%ecx  ;*caload
                  │   ││                                                  ; - java.lang.String::charAt@27 (line 660)
                  │   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.28%    0.40%  │   ││    0x00007f4a39252b3d: cmp    $0xd800,%ecx
                  │   ││    0x00007f4a39252b43: jge    0x00007f4a392537ad  ;*if_icmplt
                  │   ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │   ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.51%    0.52%  │   ││    0x00007f4a39252b49: shl    $0x3,%ecx          ;*ishl
                  │   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │   ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.17%    0.22%  │   ││    0x00007f4a39252b4c: mov    %ecx,%r8d
  0.00%           │   ││    0x00007f4a39252b4f: or     $0x1,%r8d
  0.60%    0.68%  │   ││    0x00007f4a39252b53: and    $0x7,%ecx
  0.11%    0.19%  │   ││    0x00007f4a39252b56: sar    $0x3,%r8d          ;*ishr
                  │   ││                                                  ; - com.google.re2j.Machine::match@419 (line 260)
  0.37%    0.57%  │   ││    0x00007f4a39252b5a: or     $0x1,%ecx          ; OopMap{r9=NarrowOop [24]=Oop [64]=Oop [80]=Oop [104]=Oop off=893}
                  │   ││                                                  ;*goto
                  │   ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
  0.02%    0.05%  │   ││    0x00007f4a39252b5d: test   %eax,0x15e6f49d(%rip)        # 0x00007f4a4f0c2000
                  │   ││                                                  ;*goto
                  │   ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
                  │   ││                                                  ;   {poll}
  0.16%    0.24%  │   ││    0x00007f4a39252b63: mov    0x40(%rsp),%r10
  0.06%    0.11%  │   ││    0x00007f4a39252b68: mov    0x28(%r10),%r14d   ;*getfield matchcap
                  │   ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.33%    0.57%  │   ││    0x00007f4a39252b6c: mov    0x14(%r10),%esi    ;*getfield re2
                  │   ││                                                  ; - com.google.re2j.Machine::match@169 (line 220)
  0.03%    0.03%  │   ││    0x00007f4a39252b70: mov    0x68(%rsp),%r10
  0.19%    0.32%  │   ││    0x00007f4a39252b75: mov    %r10,%rdx
  0.14%    0.15%  │   ││    0x00007f4a39252b78: shr    $0x3,%rdx
  0.32%    0.46%  │   ││    0x00007f4a39252b7c: mov    %edx,0x38(%rsp)
  0.05%    0.01%  │   ││    0x00007f4a39252b80: mov    0x2c(%rsp),%r10d
  0.15%    0.31%  │   ││    0x00007f4a39252b85: mov    0x18(%rsp),%rdx
  0.10%    0.13%  │   ││    0x00007f4a39252b8a: mov    %rdx,0x68(%rsp)
  0.36%    0.50%  │   ││    0x00007f4a39252b8f: mov    0x30(%rsp),%edx
  0.03%    0.05%  │   ││    0x00007f4a39252b93: mov    %edx,0x28(%rsp)
  0.21%    0.31%  │   ││    0x00007f4a39252b97: mov    %r8d,%edx
  0.07%    0.13%  │   ││    0x00007f4a39252b9a: mov    %ecx,0x30(%rsp)
  0.41%    0.45%  │   ││    0x00007f4a39252b9e: mov    %ebx,0x20(%rsp)
  0.03%    0.05%  │   ││    0x00007f4a39252ba2: vmovd  %r9d,%xmm4         ;*getfield matchcap
                  │   ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.15%    0.34%  ↘   ││    0x00007f4a39252ba7: mov    0x38(%rsp),%r9d
  0.08%    0.12%      ││    0x00007f4a39252bac: movzbl 0x18(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f4a39254415
  0.43%    0.51%      ││    0x00007f4a39252bb2: lea    (%r12,%r9,8),%r8   ;*aload
                      ││                                                  ; - com.google.re2j.Machine::match@136 (line 211)
  0.06%    0.03%      ││    0x00007f4a39252bb6: mov    %r8,0x18(%rsp)
  0.15%    0.13%      ││    0x00007f4a39252bbb: test   %ecx,%ecx
                      ││    0x00007f4a39252bbd: jne    0x00007f4a39252e03  ;*iload_3
                      ││                                                  ; - com.google.re2j.Machine::match@267 (line 237)
  0.06%    0.08%      ││    0x00007f4a39252bc3: test   %eax,%eax
                      ││    0x00007f4a39252bc5: jne    0x00007f4a392534b9  ;*ifne
                      ││                                                  ; - com.google.re2j.Machine::match@279 (line 237)
  0.43%    0.44%      ││    0x00007f4a39252bcb: test   %r11d,%r11d
                      ││    0x00007f4a39252bce: jne    0x00007f4a392535b1  ;*ifeq
                      ││                                                  ; - com.google.re2j.Machine::match@286 (line 240)
  0.02%    0.05%      ││    0x00007f4a39252bd4: mov    0x40(%rsp),%r8
  0.19%    0.26%      ││    0x00007f4a39252bd9: mov    0x18(%r8),%r9d     ;*getfield prog
                      ││                                                  ; - com.google.re2j.Machine::match@297 (line 243)
  0.10%    0.09%      ││    0x00007f4a39252bdd: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                      ││                                                  ; - com.google.re2j.Machine::match@300 (line 243)
                      ││                                                  ; implicit exception: dispatches to 0x00007f4a39254425
  0.39%    0.49%      ││    0x00007f4a39252be2: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f4a39254435
  2.57%    2.92%      ││    0x00007f4a39252be7: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                      ││    0x00007f4a39252bee: jne    0x00007f4a392533b1
  0.62%    0.62%      ││    0x00007f4a39252bf4: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
                      ││    0x00007f4a39252bf8: mov    0x18(%r9),%r10d    ;*getfield pc
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.33%    0.33%      ││    0x00007f4a39252bfc: cmp    $0x40,%r10d
  0.68%    0.55%      ││    0x00007f4a39252c00: jg     0x00007f4a392535f5  ;*if_icmpgt
                      ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.72%    0.63%      ││    0x00007f4a39252c06: mov    %r10d,%ecx
                      ││    0x00007f4a39252c09: mov    $0x1,%ebx
  0.01%    0.01%      ││    0x00007f4a39252c0e: shl    %cl,%rbx           ;*lshl
                      ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  1.07%    0.73%      ││    0x00007f4a39252c11: mov    0x38(%rsp),%r10d
  0.02%    0.01%      ││    0x00007f4a39252c16: mov    0x10(%r12,%r10,8),%r8  ;*getfield pcsl
                      ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
                      ││    0x00007f4a39252c1b: mov    %r8,%r10
  0.55%    0.32%      ││    0x00007f4a39252c1e: and    %rbx,%r10          ;*land
                      ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.30%    0.28%      ││    0x00007f4a39252c21: test   %r10,%r10
                      ││    0x00007f4a39252c24: jne    0x00007f4a39253649  ;*ifeq
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%      ││    0x00007f4a39252c2a: cmp    $0x40,%ecx
                      ││    0x00007f4a39252c2d: jge    0x00007f4a392536a5  ;*if_icmpge
                      ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.04%      ││    0x00007f4a39252c33: mov    0x38(%rsp),%r10d
  0.43%    0.41%      ││    0x00007f4a39252c38: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                      ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.28%    0.24%      ││    0x00007f4a39252c3d: mov    0xc(%r12,%r10,8),%r10d  ;*getfield size
                      ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.03%    0.01%      ││    0x00007f4a39252c42: mov    0x38(%rsp),%ecx
  0.02%    0.01%      ││    0x00007f4a39252c46: mov    0x20(%r12,%rcx,8),%r11d  ;*getfield denseThreadsInstructions
                      ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.43%    0.37%      ││    0x00007f4a39252c4b: or     %r8,%rbx
  0.24%    0.26%      ││    0x00007f4a39252c4e: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                      ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%               ││    0x00007f4a39252c53: mov    %r10d,%ecx
  0.02%    0.01%      ││    0x00007f4a39252c56: inc    %ecx
  0.45%    0.37%      ││    0x00007f4a39252c58: mov    0x38(%rsp),%ebx
  0.38%    0.21%      ││    0x00007f4a39252c5c: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield size
                      ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
           0.02%      ││    0x00007f4a39252c61: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f4a39254455
  0.00%               ││    0x00007f4a39252c66: cmp    %ecx,%r10d
                      ││    0x00007f4a39252c69: jae    0x00007f4a392532f2
  0.36%    0.30%      ││    0x00007f4a39252c6f: mov    0x8(%r12,%r11,8),%ecx
  0.29%    0.22%      ││    0x00007f4a39252c74: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                      ││    0x00007f4a39252c7a: jne    0x00007f4a39253401  ;*aastore
                      ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                      ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%      ││    0x00007f4a39252c80: test   %edi,%edi
                   ╭  ││    0x00007f4a39252c82: jl     0x00007f4a39252d25  ;*ifge
                   │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │  ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%   │  ││    0x00007f4a39252c88: xor    %r8d,%r8d          ;*iload_0
                   │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │  ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.36%    0.29%   │  ││↗   0x00007f4a39252c8b: cmp    $0xa,%edi
                   │  │││   0x00007f4a39252c8e: je     0x00007f4a392531eb  ;*iload_1
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.29%    0.27%   │  │││   0x00007f4a39252c94: test   %edx,%edx
                   │  │││   0x00007f4a39252c96: jl     0x00007f4a39253062  ;*iload_1
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.02%   │  │││   0x00007f4a39252c9c: cmp    $0xa,%edx
                   │  │││   0x00007f4a39252c9f: je     0x00007f4a392531f4  ;*iload_0
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.02%   │  │││   0x00007f4a39252ca5: shr    $0x3,%r9           ;*aastore
                   │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.30%    0.29%   │  │││   0x00007f4a39252ca9: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                   │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.37%    0.19%   │  │││   0x00007f4a39252cad: lea    0x10(%r11,%r10,4),%r10
  0.04%    0.02%   │  │││   0x00007f4a39252cb2: mov    %r9d,(%r10)
  0.32%    0.33%   │  │││   0x00007f4a39252cb5: mov    %edi,%r11d
  0.32%    0.23%   │  │││   0x00007f4a39252cb8: add    $0xffffffbf,%r11d
  0.23%    0.14%   │  │││   0x00007f4a39252cbc: shr    $0x9,%r10
  0.02%    0.02%   │  │││   0x00007f4a39252cc0: movabs $0x7f4a34a2e000,%r9
  0.14%    0.16%   │  │││   0x00007f4a39252cca: mov    %r12b,(%r9,%r10,1)  ;*aastore
                   │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.70%    0.54%   │  │││   0x00007f4a39252cce: cmp    $0x1a,%r11d
                   │╭ │││   0x00007f4a39252cd2: jb     0x00007f4a39252ce5  ;*if_icmple
                   ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││ │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.11%   ││ │││   0x00007f4a39252cd4: mov    %edi,%r10d
  0.01%    0.02%   ││ │││   0x00007f4a39252cd7: add    $0xffffff9f,%r10d
  0.10%    0.11%   ││ │││   0x00007f4a39252cdb: cmp    $0x1a,%r10d
                   ││ │││   0x00007f4a39252cdf: jae    0x00007f4a3925322e  ;*iconst_1
                   ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││ │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.38%    0.26%   │↘ │││   0x00007f4a39252ce5: mov    $0x1,%ebp          ;*ireturn
                   │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.18%   │  │││   0x00007f4a39252cea: mov    %edx,%r11d
  0.05%    0.01%   │  │││   0x00007f4a39252ced: add    $0xffffffbf,%r11d
  0.09%    0.08%   │  │││   0x00007f4a39252cf1: cmp    $0x1a,%r11d
                   │ ╭│││   0x00007f4a39252cf5: jb     0x00007f4a39252d08  ;*if_icmple
                   │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ ││││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.41%    0.24%   │ ││││   0x00007f4a39252cf7: mov    %edx,%r10d
  0.17%    0.06%   │ ││││   0x00007f4a39252cfa: add    $0xffffff9f,%r10d
  0.08%    0.03%   │ ││││   0x00007f4a39252cfe: cmp    $0x1a,%r10d
                   │ ││││   0x00007f4a39252d02: jae    0x00007f4a3925324f  ;*iconst_1
                   │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ ││││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.05%   │ ↘│││   0x00007f4a39252d08: mov    $0x1,%r11d         ;*ireturn
                   │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.34%    0.21%   │  │││   0x00007f4a39252d0e: cmp    %r11d,%ebp
                   │  ╰││   0x00007f4a39252d11: je     0x00007f4a39252a22  ;*if_icmpeq
                   │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │   ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.01%   │   ││   0x00007f4a39252d17: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │   ││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.06%   │   ││   0x00007f4a39252d1b: mov    %r8d,0x2c(%rsp)
  0.35%    0.19%   │   ╰│   0x00007f4a39252d20: jmpq   0x00007f4a39252a2b
                   ↘    │   0x00007f4a39252d25: mov    $0x5,%r8d
                        ╰   0x00007f4a39252d2b: jmpq   0x00007f4a39252c8b
  0.00%    0.01%            0x00007f4a39252d30: mov    %r8d,0x5c(%rsp)
  0.00%    0.01%            0x00007f4a39252d35: jmpq   0x00007f4a39252f9e
                            0x00007f4a39252d3a: mov    0x5c(%rsp),%r8d
                            0x00007f4a39252d3f: add    $0x2,%r8d
                            0x00007f4a39252d43: mov    %r8d,0x5c(%rsp)
           0.00%            0x00007f4a39252d48: mov    0x5c(%rsp),%r8d
                            0x00007f4a39252d4d: inc    %r8d
                            0x00007f4a39252d50: mov    %r8d,0x58(%rsp)
                            0x00007f4a39252d55: jmp    0x00007f4a39252d82
  0.00%                     0x00007f4a39252d57: mov    0x5c(%rsp),%r8d
           0.00%            0x00007f4a39252d5c: add    $0x2,%r8d
                            0x00007f4a39252d60: mov    %r8d,0x58(%rsp)
                         ╭  0x00007f4a39252d65: jmp    0x00007f4a39252d75
                         │  0x00007f4a39252d67: mov    0x5c(%rsp),%r8d
                         │  0x00007f4a39252d6c: add    $0x2,%r8d
                         │  0x00007f4a39252d70: mov    %r8d,0x5c(%rsp)
                         ↘  0x00007f4a39252d75: mov    0x5c(%rsp),%r8d
                            0x00007f4a39252d7a: inc    %r8d               ;*iinc
                                                                          ; - java.lang.String::indexOf@69 (line 1772)
                                                                          ; - java.lang.String::indexOf@21 (line 1718)
                                                                          ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
....................................................................................................
 34.92%   34.66%  <total for region 2>

....[Hottest Regions]...............................................................................
 44.83%   46.02%         C2, level 4  com.google.re2j.Machine::step, version 522 (913 bytes) 
 34.92%   34.66%         C2, level 4  com.google.re2j.Machine::match, version 560 (861 bytes) 
  8.09%    7.52%         C2, level 4  com.google.re2j.Machine::step, version 522 (336 bytes) 
  7.22%    7.94%         C2, level 4  com.google.re2j.Machine::step, version 522 (159 bytes) 
  0.78%    0.77%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.57%    0.41%         C2, level 4  com.google.re2j.Machine::match, version 560 (415 bytes) 
  0.22%    0.11%         C2, level 4  com.google.re2j.Pattern::find, version 571 (32 bytes) 
  0.20%    0.15%         C2, level 4  com.google.re2j.Machine::match, version 560 (237 bytes) 
  0.16%    0.18%         C2, level 4  com.google.re2j.Machine::match, version 560 (330 bytes) 
  0.15%    0.07%         C2, level 4  java.util.Collections::shuffle, version 582 (150 bytes) 
  0.13%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 560 (399 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.10%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 571 (0 bytes) 
  0.10%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 571 (0 bytes) 
  0.09%    0.14%         C2, level 4  com.google.re2j.Pattern::find, version 571 (0 bytes) 
  0.09%                  C2, level 4  com.google.re2j.Pattern::find, version 571 (74 bytes) 
  0.07%    0.01%         C2, level 4  java.util.Collections::shuffle, version 582 (91 bytes) 
  0.07%    0.01%              [vdso]  [unknown] (2 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.04%    0.00%         C2, level 4  com.google.re2j.Pattern::find, version 571 (90 bytes) 
  2.00%    1.79%  <...other 403 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.15%   61.48%         C2, level 4  com.google.re2j.Machine::step, version 522 
 36.01%   35.50%         C2, level 4  com.google.re2j.Machine::match, version 560 
  1.75%    1.60%   [kernel.kallsyms]  [unknown] 
  0.85%    0.38%         C2, level 4  com.google.re2j.Pattern::find, version 571 
  0.27%    0.09%         C2, level 4  java.util.Collections::shuffle, version 582 
  0.08%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 614 
  0.07%    0.01%              [vdso]  [unknown] 
  0.07%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.00%              [vdso]  __vdso_clock_gettime 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 580 
  0.03%    0.01%  libpthread-2.26.so  __libc_write 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.03%    0.03%           libjvm.so  xmlTextStream::write 
  0.03%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.01%           libjvm.so  outputStream::update_position 
  0.02%    0.07%           libjvm.so  RelocIterator::initialize 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.00%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.01%           libjvm.so  fileStream::write 
  0.02%    0.00%         interpreter  method entry point (kind = zerolocals)  
  0.41%    0.35%  <...other 63 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 97.39%   97.52%         C2, level 4
  1.75%    1.60%   [kernel.kallsyms]
  0.37%    0.48%           libjvm.so
  0.17%    0.25%        libc-2.26.so
  0.12%    0.01%              [vdso]
  0.07%    0.05%      hsdis-amd64.so
  0.06%    0.04%  libpthread-2.26.so
  0.05%    0.02%         interpreter
  0.00%    0.01%        runtime stub
  0.00%    0.00%      perf-20255.map
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1       thrpt   20  28327.830 ± 308.541  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN              ---
