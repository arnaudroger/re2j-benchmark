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
# Warmup Iteration   1: 10831.339 ops/s
# Warmup Iteration   2: 21553.495 ops/s
# Warmup Iteration   3: 21684.044 ops/s
# Warmup Iteration   4: 21701.099 ops/s
# Warmup Iteration   5: 21727.701 ops/s
# Warmup Iteration   6: 21760.317 ops/s
# Warmup Iteration   7: 21687.844 ops/s
# Warmup Iteration   8: 21716.908 ops/s
# Warmup Iteration   9: 21748.023 ops/s
# Warmup Iteration  10: 21742.031 ops/s
# Warmup Iteration  11: 21748.122 ops/s
# Warmup Iteration  12: 21755.871 ops/s
# Warmup Iteration  13: 21757.673 ops/s
# Warmup Iteration  14: 21754.173 ops/s
# Warmup Iteration  15: 21728.390 ops/s
# Warmup Iteration  16: 21775.715 ops/s
# Warmup Iteration  17: 21924.589 ops/s
# Warmup Iteration  18: 21927.545 ops/s
# Warmup Iteration  19: 19009.591 ops/s
# Warmup Iteration  20: 21925.898 ops/s
Iteration   1: 21926.146 ops/s
Iteration   2: 21933.504 ops/s
Iteration   3: 21836.895 ops/s
Iteration   4: 21866.485 ops/s
Iteration   5: 21869.107 ops/s
Iteration   6: 21867.752 ops/s
Iteration   7: 21865.876 ops/s
Iteration   8: 21857.957 ops/s
Iteration   9: 21867.428 ops/s
Iteration  10: 21888.065 ops/s
Iteration  11: 21940.966 ops/s
Iteration  12: 21938.874 ops/s
Iteration  13: 21939.573 ops/s
Iteration  14: 21939.384 ops/s
Iteration  15: 21938.070 ops/s
Iteration  16: 21939.483 ops/s
Iteration  17: 21934.742 ops/s
Iteration  18: 21889.762 ops/s
Iteration  19: 21940.008 ops/s
Iteration  20: 21932.982 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  21905.653 ±(99.9%) 31.947 ops/s [Average]
  (min, avg, max) = (21836.895, 21905.653, 21940.966), stdev = 36.790
  CI (99.9%): [21873.706, 21937.600] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 196577 total address lines.
Perf output processed (skipped 23.331 seconds):
 Column 1: cycles (20318 events)
 Column 2: instructions (20384 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (949 bytes) 

                      0x00007fb6212257b7: shr    $0x9,%r10
                      0x00007fb6212257bb: movabs $0x7fb631c81000,%r11
                      0x00007fb6212257c5: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
                      0x00007fb6212257c9: mov    %r13,%r11          ;*synchronization entry
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.16%   ↗  0x00007fb6212257cc: mov    0x28(%rsp),%rax
  0.14%    0.21%   │  0x00007fb6212257d1: mov    0xac(%rsp),%r9d
  0.28%    0.37%   │  0x00007fb6212257d9: mov    0xc(%rsp),%r14d
  0.06%    0.09%   │  0x00007fb6212257de: mov    0x30(%rsp),%rbx
  0.14%    0.11%   │  0x00007fb6212257e3: mov    0xa4(%rsp),%r10d   ;*aload
                   │                                                ; - com.google.re2j.Machine::step@219 (line 320)
  2.07%    2.17%  ↗│  0x00007fb6212257eb: inc    %r10d              ;*iinc
                  ││                                                ; - com.google.re2j.Machine::step@230 (line 286)
  0.25%    0.41%  ││  0x00007fb6212257ee: cmp    %r9d,%r10d
                  ││  0x00007fb6212257f1: jge    0x00007fb621225c9d
  0.09%    0.09%  ││  0x00007fb6212257f7: mov    %r11,%rdi          ;*iload
                  ││                                                ; - com.google.re2j.Machine::step@43 (line 289)
  0.60%    0.60%  ││  0x00007fb6212257fa: mov    0x10(%rbx,%r10,4),%ecx  ;*aaload
                  ││                                                ; - com.google.re2j.Machine::step@99 (line 299)
  1.42%    1.60%  ││  0x00007fb6212257ff: mov    0xc(%r12,%rcx,8),%r8d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::step@104 (line 301)
                  ││                                                ; implicit exception: dispatches to 0x00007fb621226cf5
  1.15%    1.23%  ││  0x00007fb621225804: cmp    $0x6,%r8d
                  ││  0x00007fb621225808: je     0x00007fb621225dd7  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Machine::step@109 (line 301)
  0.48%    0.54%  ││  0x00007fb62122580e: cmp    $0xa,%r8d
                  ││  0x00007fb621225812: jne    0x00007fb621225c27  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││                                                ; - com.google.re2j.Machine::step@191 (line 316)
  0.28%    0.29%  ││  0x00007fb621225818: mov    0x2c(%r12,%rcx,8),%ecx  ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::step@199 (line 317)
  0.09%    0.12%  ││  0x00007fb62122581d: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fb621226d05
  1.73%    1.65%  ││  0x00007fb621225822: lea    (%r12,%rcx,8),%r8
  0.00%           ││  0x00007fb621225826: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ││  0x00007fb62122582d: jne    0x00007fb621225ccd  ;*invokevirtual add
                  ││                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.58%    0.63%  ││  0x00007fb621225833: mov    0x18(%r8),%ecx     ;*getfield pc
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.19%  ││  0x00007fb621225837: mov    %rdi,%r11
  0.07%    0.11%  ││  0x00007fb62122583a: mov    0x10(%rdi),%rdi    ;*getfield pcsl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                  ││                                                ; implicit exception: dispatches to 0x00007fb621226d19
           0.01%  ││  0x00007fb62122583e: cmp    $0x40,%ecx
                  ││  0x00007fb621225841: jg     0x00007fb6212260dd  ;*if_icmpgt
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.64%    0.72%  ││  0x00007fb621225847: mov    $0x1,%edx
                  ││  0x00007fb62122584c: shl    %cl,%rdx           ;*lshl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.34%    1.18%  ││  0x00007fb62122584f: mov    %rdi,%rsi
  0.00%    0.01%  ││  0x00007fb621225852: and    %rdx,%rsi
  0.11%    0.13%  ││  0x00007fb621225855: test   %rsi,%rsi
                  ╰│  0x00007fb621225858: jne    0x00007fb6212257eb  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.37%   │  0x00007fb62122585a: cmp    $0x40,%ecx
                   │  0x00007fb62122585d: jge    0x00007fb62122614d  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.22%   │  0x00007fb621225863: mov    %r12b,0x18(%r11)   ;*putfield empty
                   │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%            │  0x00007fb621225867: mov    0x2c(%r8),%ebp     ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.04%   │  0x00007fb62122586b: or     %rdi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.46%   │  0x00007fb62122586e: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.26%   │  0x00007fb621225872: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007fb621226d2d
  1.03%    0.98%   │  0x00007fb621225877: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007fb62122587d: jne    0x00007fb621225e8d
  0.67%    0.70%   │  0x00007fb621225883: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │  0x00007fb621225887: mov    0x18(%rdi),%ecx    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.36%    0.40%   │  0x00007fb62122588a: cmp    $0x40,%ecx
                   │  0x00007fb62122588d: jg     0x00007fb6212261b9  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.42%    0.44%   │  0x00007fb621225893: mov    $0x1,%esi
  0.20%    0.24%   │  0x00007fb621225898: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  1.16%    1.03%   │  0x00007fb62122589b: mov    %rdx,%r13
  0.07%    0.03%   │  0x00007fb62122589e: and    %rsi,%r13          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%   │  0x00007fb6212258a1: test   %r13,%r13
                   │  0x00007fb6212258a4: jne    0x00007fb621225d89  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.65%   │  0x00007fb6212258aa: xor    %ebp,%ebp          ;*ireturn
                   │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.13%   │  0x00007fb6212258ac: test   %r13,%r13
                   │  0x00007fb6212258af: jne    0x00007fb62122622d  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.40%    0.36%   │  0x00007fb6212258b5: cmp    $0x40,%ecx
                   │  0x00007fb6212258b8: jge    0x00007fb6212262a5  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%   │  0x00007fb6212258be: mov    %r10d,0xa4(%rsp)
  0.09%    0.12%   │  0x00007fb6212258c6: mov    %rbx,0x30(%rsp)
  0.18%    0.15%   │  0x00007fb6212258cb: mov    %r14d,0xc(%rsp)
  0.49%    0.39%   │  0x00007fb6212258d0: mov    %r9d,0xac(%rsp)
  0.01%            │  0x00007fb6212258d8: mov    %r11,%r13
  0.12%    0.08%   │  0x00007fb6212258db: mov    %rax,0x28(%rsp)
  0.15%    0.14%   │  0x00007fb6212258e0: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.43%    0.27%   │  0x00007fb6212258e3: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.00%   │  0x00007fb6212258e7: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.11%   │  0x00007fb6212258eb: mov    %r10d,%eax
  0.21%    0.05%   │  0x00007fb6212258ee: mov    0xc(%r11),%r10d    ;*getfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.40%    0.27%   │  0x00007fb6212258f2: mov    %r10d,%r14d
  0.01%    0.01%   │  0x00007fb6212258f5: inc    %r10d              ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.08%   │  0x00007fb6212258f8: mov    %r10d,0xc(%r11)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.10%   │  0x00007fb6212258fc: vmovd  %r10d,%xmm0
  0.29%    0.32%   │  0x00007fb621225901: mov    %eax,%r10d
  0.02%    0.00%   │  0x00007fb621225904: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fb621226d41
  0.16%    0.12%   │  0x00007fb621225909: mov    %r14d,%r10d
  0.17%    0.11%   │  0x00007fb62122590c: cmp    %r11d,%r10d
                   │  0x00007fb62122590f: jae    0x00007fb621225e3d
  0.36%    0.34%   │  0x00007fb621225915: mov    %eax,%r10d
  0.02%    0.00%   │  0x00007fb621225918: mov    0x8(%r12,%r10,8),%r10d
  0.09%    0.13%   │  0x00007fb62122591d: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  0x00007fb621225924: jne    0x00007fb621225efd  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.16%   │  0x00007fb62122592a: mov    0x34(%r8),%r10d    ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.34%   │  0x00007fb62122592e: vmovd  %r10d,%xmm1
  0.01%    0.00%   │  0x00007fb621225933: mov    %rdi,%r10
  0.14%    0.13%   │  0x00007fb621225936: shr    $0x3,%r10          ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.11%   │  0x00007fb62122593a: lea    (%r12,%rax,8),%r8  ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.30%   │  0x00007fb62122593e: lea    0x10(%r8,%r14,4),%r9
  0.01%            │  0x00007fb621225943: mov    %r10d,(%r9)
  0.11%    0.05%   │  0x00007fb621225946: mov    %r9,%r10
  0.19%    0.03%   │  0x00007fb621225949: shr    $0x9,%r10
  0.47%    0.29%   │  0x00007fb62122594d: movabs $0x7fb631c81000,%r9
  0.02%    0.01%   │  0x00007fb621225957: mov    %r12b,(%r9,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.12%   │  0x00007fb62122595b: vmovd  %xmm1,%r10d
  0.11%    0.14%   │  0x00007fb621225960: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                   │                                                ; implicit exception: dispatches to 0x00007fb621226d5d
  0.37%    0.41%   │  0x00007fb621225965: movslq %r14d,%r9
           0.02%   │  0x00007fb621225968: lea    (%r8,%r9,4),%r9    ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.14%   │  0x00007fb62122596c: mov    %r9,%rdi
  0.15%    0.15%   │  0x00007fb62122596f: add    $0x14,%rdi         ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.37%    0.39%   │  0x00007fb621225973: vmovd  %xmm1,%ecx
  0.02%    0.01%   │  0x00007fb621225977: lea    (%r12,%rcx,8),%rsi
  0.11%    0.08%   │  0x00007fb62122597b: mov    %r14d,%ebx
  0.11%    0.10%   │  0x00007fb62122597e: add    $0x2,%ebx          ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.40%    0.22%   │  0x00007fb621225981: cmp    $0xf8019885,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007fb621225988: jne    0x00007fb621225744  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%   │  0x00007fb62122598e: vmovq  %rsi,%xmm1
  0.12%    0.04%   │  0x00007fb621225993: mov    0x18(%rsi),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.06%   │  0x00007fb621225997: vmovd  %r10d,%xmm2
  0.41%    0.11%   │  0x00007fb62122599c: cmp    $0x40,%r10d
                   │  0x00007fb6212259a0: jg     0x00007fb6212264a9  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%   │  0x00007fb6212259a6: mov    $0x1,%esi
  0.08%    0.07%   │  0x00007fb6212259ab: mov    %r10d,%ecx
  0.16%    0.06%   │  0x00007fb6212259ae: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.53%    0.31%   │  0x00007fb6212259b1: mov    %rdx,%r10
  0.20%    0.04%   │  0x00007fb6212259b4: and    %rsi,%r10          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.38%    0.31%   │  0x00007fb6212259b7: test   %r10,%r10
                   │  0x00007fb6212259ba: jne    0x00007fb621225d93  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%            │  0x00007fb6212259c0: xor    %ebp,%ebp          ;*ireturn
                   │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.05%   │  0x00007fb6212259c2: test   %r10,%r10
                   │  0x00007fb6212259c5: jne    0x00007fb6212264f5  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.16%   │  0x00007fb6212259cb: mov    %ecx,%r10d
  0.37%    0.08%   │  0x00007fb6212259ce: cmp    $0x40,%r10d
                   │  0x00007fb6212259d2: jge    0x00007fb621226521  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%            │  0x00007fb6212259d8: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.07%   │  0x00007fb6212259db: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.01%   │  0x00007fb6212259df: vmovq  %xmm1,%r10
  0.36%    0.19%   │  0x00007fb6212259e4: mov    0x2c(%r10),%ebp    ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%            │  0x00007fb6212259e8: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fb621226d91
  0.13%    0.03%   │  0x00007fb6212259ed: cmp    $0xf8019843,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   │  0x00007fb6212259f4: jne    0x00007fb621226081
  0.14%    0.23%   │  0x00007fb6212259fa: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.37%   │  0x00007fb6212259fe: vmovq  %r10,%xmm1
  0.00%    0.01%   │  0x00007fb621225a03: mov    0x18(%r10),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.30%   │  0x00007fb621225a07: mov    %r10d,%ecx
  0.20%    0.26%   │  0x00007fb621225a0a: cmp    $0x40,%r10d
                   │  0x00007fb621225a0e: jg     0x00007fb621226679  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.34%    0.65%   │  0x00007fb621225a14: mov    $0x1,%esi
  0.01%    0.01%   │  0x00007fb621225a19: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.72%    0.68%   │  0x00007fb621225a1c: mov    %rdx,%r10
  0.01%    0.01%   │  0x00007fb621225a1f: and    %rsi,%r10
  0.12%    0.22%   │  0x00007fb621225a22: test   %r10,%r10
                   │  0x00007fb621225a25: jne    0x00007fb621225da7  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.17%   │  0x00007fb621225a2b: mov    %ecx,%r10d
  0.48%    0.42%   │  0x00007fb621225a2e: cmp    $0x40,%r10d
                   │  0x00007fb621225a32: jge    0x00007fb6212266c5  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%   │  0x00007fb621225a38: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.11%   │  0x00007fb621225a3b: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.17%   │  0x00007fb621225a3f: vmovq  %xmm1,%r10
  0.39%    0.48%   │  0x00007fb621225a44: mov    0x2c(%r10),%ebp    ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%   │  0x00007fb621225a48: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fb621226da5
  0.30%    0.21%   │  0x00007fb621225a4d: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007fb621225a54: jne    0x00007fb6212260a9
  0.28%    0.29%   │  0x00007fb621225a5a: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.25%   │  0x00007fb621225a5e: vmovq  %r10,%xmm2
  0.01%    0.01%   │  0x00007fb621225a63: mov    0x18(%r10),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.20%   │  0x00007fb621225a67: vmovd  %r10d,%xmm3
  0.36%    0.49%   │  0x00007fb621225a6c: cmp    $0x40,%r10d
                   │  0x00007fb621225a70: jg     0x00007fb621226711  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.46%   │  0x00007fb621225a76: mov    $0x1,%esi
  0.01%    0.01%   │  0x00007fb621225a7b: mov    %r10d,%ecx
  0.12%    0.18%   │  0x00007fb621225a7e: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.73%    0.79%   │  0x00007fb621225a81: mov    %rdx,%r10
  0.11%    0.06%   │  0x00007fb621225a84: and    %rsi,%r10          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.26%    0.21%   │  0x00007fb621225a87: test   %r10,%r10
                   │  0x00007fb621225a8a: jne    0x00007fb621225daf  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.36%   │  0x00007fb621225a90: xor    %ebp,%ebp          ;*ireturn
                   │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.13%   │  0x00007fb621225a92: test   %r10,%r10
                   │  0x00007fb621225a95: jne    0x00007fb621226765  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.17%   │  0x00007fb621225a9b: mov    %ecx,%r10d
  0.22%    0.22%   │  0x00007fb621225a9e: cmp    $0x40,%r10d
                   │  0x00007fb621225aa2: jge    0x00007fb62122679d  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.28%    0.40%   │  0x00007fb621225aa8: mov    %ebx,0xc(%r13)     ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.03%   │  0x00007fb621225aac: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.18%   │  0x00007fb621225aaf: mov    %rdx,0x10(%r13)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.17%   │  0x00007fb621225ab3: cmp    %r11d,%ebx
                   │  0x00007fb621225ab6: jae    0x00007fb621225ff1  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.41%   │  0x00007fb621225abc: vmovq  %xmm1,%r10
  0.09%    0.10%   │  0x00007fb621225ac1: mov    0x34(%r10),%r10d   ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.14%   │  0x00007fb621225ac5: mov    %r10d,%ebx
  0.25%    0.22%   │  0x00007fb621225ac8: mov    %rdi,%r11
  0.32%    0.31%   │  0x00007fb621225acb: vmovq  %xmm2,%r10
  0.07%    0.08%   │  0x00007fb621225ad0: shr    $0x3,%r10
  0.14%    0.17%   │  0x00007fb621225ad4: mov    %r10d,(%rdi)
  0.17%    0.20%   │  0x00007fb621225ad7: shr    $0x9,%r11
  0.34%    0.42%   │  0x00007fb621225adb: movabs $0x7fb631c81000,%r10
  0.07%    0.08%   │  0x00007fb621225ae5: mov    %r12b,(%r10,%r11,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.16%   │  0x00007fb621225ae9: mov    0x8(%r12,%rbx,8),%r11d  ; implicit exception: dispatches to 0x00007fb621226db9
  0.16%    0.26%   │  0x00007fb621225aee: lea    (%r12,%rbx,8),%r10
  0.32%    0.34%   │  0x00007fb621225af2: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007fb621225af9: je     0x00007fb621225b86
  0.08%    0.06%   │  0x00007fb621225aff: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007fb621225b06: jne    0x00007fb621226441  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.07%   │  0x00007fb621225b0c: mov    0x18(%r10),%ecx    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.08%   │  0x00007fb621225b10: cmp    $0x40,%ecx
                   │  0x00007fb621225b13: jg     0x00007fb6212268a9  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.33%    0.20%   │  0x00007fb621225b19: mov    %r10,%rbx
  0.04%    0.10%   │  0x00007fb621225b1c: mov    $0x1,%r11d
  0.12%    0.19%   │  0x00007fb621225b22: mov    %ecx,%r10d
  0.15%    0.26%   │  0x00007fb621225b25: shl    %cl,%r11           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.55%    0.78%   │  0x00007fb621225b28: mov    %rdx,%rcx
  0.20%    0.31%   │  0x00007fb621225b2b: and    %r11,%rcx          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.29%    0.37%   │  0x00007fb621225b2e: test   %rcx,%rcx
                   │  0x00007fb621225b31: jne    0x00007fb621225dc3  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.06%   │  0x00007fb621225b37: xor    %ebp,%ebp          ;*ireturn
                   │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.18%   │  0x00007fb621225b39: test   %rcx,%rcx
                   │  0x00007fb621225b3c: jne    0x00007fb621226919  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.19%   │  0x00007fb621225b42: cmp    $0x40,%r10d
                   │  0x00007fb621225b46: jge    0x00007fb621226945  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.31%    0.44%   │  0x00007fb621225b4c: or     %r11,%rdx
  0.10%    0.11%   │  0x00007fb621225b4f: mov    %r13,%r11
  0.16%    0.18%   │  0x00007fb621225b52: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.24%   │  0x00007fb621225b56: add    $0x18,%r9
  0.33%    0.35%   │  0x00007fb621225b5a: mov    %rbx,%r10
  0.05%    0.07%   │  0x00007fb621225b5d: shr    $0x3,%r10
  0.12%    0.16%   │  0x00007fb621225b61: mov    %r10d,(%r9)        ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.19%   │  0x00007fb621225b64: mov    %r9,%r10
  0.29%    0.35%   │  0x00007fb621225b67: add    $0x3,%r14d
  0.10%    0.05%   │  0x00007fb621225b6b: mov    %r14d,0xc(%r11)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.12%   │  0x00007fb621225b6f: shr    $0x9,%r10
  0.20%    0.12%   │  0x00007fb621225b73: movabs $0x7fb631c81000,%r8
  0.29%    0.37%   │  0x00007fb621225b7d: mov    %r12b,(%r8,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.09%   ╰  0x00007fb621225b81: jmpq   0x00007fb6212257cc
                      0x00007fb621225b86: mov    %r10,%r8           ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 44.57%   44.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 539 (856 bytes) 

                           0x00007fb6212407b0: vmovq  %xmm0,%r11
                           0x00007fb6212407b5: movzbl 0x11(%r11),%r8d    ;*getfield captures
                                                                         ; - com.google.re2j.Machine::match@283 (line 240)
                           0x00007fb6212407ba: mov    %rcx,%r11
                           0x00007fb6212407bd: shl    $0x3,%r11          ;*getfield q1
                                                                         ; - com.google.re2j.Machine::match@53 (line 192)
                           0x00007fb6212407c1: mov    %r11,0x60(%rsp)
                           0x00007fb6212407c6: xor    %eax,%eax
                           0x00007fb6212407c8: xor    %r9d,%r9d
                           0x00007fb6212407cb: mov    %r9d,0x58(%rsp)
  0.00%           ╭        0x00007fb6212407d0: jmpq   0x00007fb621240969
                  │ ↗      0x00007fb6212407d5: mov    $0x5,%r8d
                  │╭│      0x00007fb6212407db: jmpq   0x00007fb621240a5b
  0.00%    0.00%  │││  ↗   0x00007fb6212407e0: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │││  │                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.23%  │││  │   0x00007fb6212407e4: mov    %r8d,0x2c(%rsp)    ;*iload_2
                  │││  │                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │││  │                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.05%  │││  │↗  0x00007fb6212407e9: mov    0x58(%rsp),%ecx
  0.33%    0.30%  │││  ││  0x00007fb6212407ed: cmp    0x14(%rsp),%ecx
                  │││  ││  0x00007fb6212407f1: je     0x00007fb621240fd2  ;*if_icmpne
                  │││  ││                                                ; - com.google.re2j.Machine::match@351 (line 246)
  0.11%    0.09%  │││  ││  0x00007fb6212407f7: xor    %r10d,%r10d
  0.31%    0.29%  │││  ││  0x00007fb6212407fa: mov    %rax,-0x8(%rsp)
  0.01%    0.01%  │││  ││  0x00007fb6212407ff: mov    0x58(%rsp),%eax
  0.36%    0.34%  │││  ││  0x00007fb621240803: mov    %eax,0x34(%rsp)
  0.07%    0.03%  │││  ││  0x00007fb621240807: mov    -0x8(%rsp),%rax
  0.49%    0.33%  │││  ││  0x00007fb62124080c: mov    %r11d,0x58(%rsp)
  0.05%    0.05%  │││  ││  0x00007fb621240811: mov    %ebx,0x20(%rsp)
  0.32%    0.30%  │││  ││  0x00007fb621240815: vmovq  %xmm0,%rsi
  0.08%    0.06%  │││  ││  0x00007fb62124081a: mov    0x18(%rsp),%rdx
  0.23%    0.26%  │││  ││  0x00007fb62124081f: mov    0x60(%rsp),%rcx
  0.12%    0.07%  │││  ││  0x00007fb621240824: mov    0x34(%rsp),%r8d
  0.72%    0.53%  │││  ││  0x00007fb621240829: mov    %r11d,%r9d
  0.01%    0.02%  │││  ││  0x00007fb62124082c: mov    0x2c(%rsp),%ebx
  0.22%    0.31%  │││  ││  0x00007fb621240830: mov    %ebx,(%rsp)
  0.04%    0.04%  │││  ││  0x00007fb621240833: xor    %ebx,%ebx
  0.42%    0.35%  │││  ││  0x00007fb621240835: mov    %ebx,0x8(%rsp)
  0.02%    0.00%  │││  ││  0x00007fb621240839: mov    %r10d,0x10(%rsp)
  0.25%    0.28%  │││  ││  0x00007fb62124083e: nop
  0.03%    0.05%  │││  ││  0x00007fb62124083f: callq  0x00007fb621046020  ; OopMap{[24]=Oop [56]=NarrowOop [72]=Oop [80]=Oop [96]=Oop off=676}
                  │││  ││                                                ;*invokespecial step
                  │││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
                  │││  ││                                                ;   {optimized virtual_call}
  0.00%    0.00%  │││  ││  0x00007fb621240844: mov    0x50(%rsp),%r10
  0.60%    0.74%  │││  ││  0x00007fb621240849: movzbl 0x11(%r10),%r8d    ;*getfield captures
                  │││  ││                                                ; - com.google.re2j.Machine::match@371 (line 250)
  0.01%    0.02%  │││  ││  0x00007fb62124084e: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │││  ││                                                ; - com.google.re2j.Machine::match@378 (line 250)
  0.01%    0.00%  │││  ││  0x00007fb621240853: mov    0x28(%rsp),%r9d
  0.68%    1.08%  │││  ││  0x00007fb621240858: test   %r9d,%r9d
                  │││  ││  0x00007fb62124085b: je     0x00007fb621240f80  ;*ifne
                  │││  ││                                                ; - com.google.re2j.Machine::match@364 (line 247)
  0.00%           │││  ││  0x00007fb621240861: test   %r8d,%r8d
                  │││  ││  0x00007fb621240864: jne    0x00007fb6212412e5  ;*ifne
                  │││  ││                                                ; - com.google.re2j.Machine::match@374 (line 250)
                  │││  ││  0x00007fb62124086a: test   %eax,%eax
                  │││  ││  0x00007fb62124086c: jne    0x00007fb6212414c9  ;*ifeq
                  │││  ││                                                ; - com.google.re2j.Machine::match@381 (line 250)
  0.00%    0.01%  │││  ││  0x00007fb621240872: mov    0x48(%rsp),%rdx
  0.63%    0.80%  │││  ││  0x00007fb621240877: mov    0x10(%rdx),%ecx    ;*getfield end
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.03%  │││  ││  0x00007fb62124087a: mov    0xc(%rdx),%r11d    ;*getfield start
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.12%    0.12%  │││  ││  0x00007fb62124087e: mov    %r11d,0x24(%rsp)
  0.02%    0.03%  │││  ││  0x00007fb621240883: mov    0x14(%rdx),%r9d    ;*getfield str
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.64%    0.91%  │││  ││  0x00007fb621240887: mov    0x20(%rsp),%ebp
                  │││  ││  0x00007fb62124088b: cmp    $0xffffffff,%ebp
                  │││  ││  0x00007fb62124088e: je     0x00007fb621240fdd  ;*if_icmpeq
                  │││  ││                                                ; - com.google.re2j.Machine::match@403 (line 258)
                  │││  ││  0x00007fb621240894: mov    0x30(%rsp),%r14d
  0.01%    0.03%  │││  ││  0x00007fb621240899: add    0x58(%rsp),%r14d
  0.73%    0.93%  │││  ││  0x00007fb62124089e: add    %r11d,%r14d        ;*iadd
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.01%  │││  ││  0x00007fb6212408a1: cmp    %ecx,%r14d
                  │││  ││  0x00007fb6212408a4: jge    0x00007fb621240fec  ;*if_icmpge
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.02%  │││  ││  0x00007fb6212408aa: mov    %ebp,%r13d
  0.02%    0.02%  │││  ││  0x00007fb6212408ad: mov    %r10,%rdi
  0.67%    0.64%  │││  ││  0x00007fb6212408b0: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fb621242275
  0.11%    0.17%  │││  ││  0x00007fb6212408b5: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││  ││  0x00007fb6212408bc: jne    0x00007fb621241255
  0.14%    0.17%  │││  ││  0x00007fb6212408c2: lea    (%r12,%r9,8),%r10  ;*invokeinterface charAt
                  │││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.01%  │││  ││  0x00007fb6212408c6: vmovq  %r10,%xmm0
  0.56%    0.67%  │││  ││  0x00007fb6212408cb: test   %r14d,%r14d
                  │││  ││  0x00007fb6212408ce: jl     0x00007fb62124132d  ;*iflt
                  │││  ││                                                ; - java.lang.String::charAt@1 (line 657)
                  │││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
                  │││  ││  0x00007fb6212408d4: mov    0xc(%r10),%ebx     ;*getfield value
                  │││  ││                                                ; - java.lang.String::charAt@6 (line 657)
                  │││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.14%    0.22%  │││  ││  0x00007fb6212408d8: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                  │││  ││                                                ; - java.lang.String::charAt@9 (line 657)
                  │││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
                  │││  ││                                                ; implicit exception: dispatches to 0x00007fb621242289
  1.80%    2.41%  │││  ││  0x00007fb6212408dd: cmp    %ebp,%r14d
                  │││  ││  0x00007fb6212408e0: jge    0x00007fb621241511  ;*if_icmplt
                  │││  ││                                                ; - java.lang.String::charAt@10 (line 657)
                  │││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.77%    0.97%  │││  ││  0x00007fb6212408e6: cmp    %ebp,%r14d
                  │││  ││  0x00007fb6212408e9: jae    0x00007fb621241151
  0.01%    0.01%  │││  ││  0x00007fb6212408ef: lea    (%r12,%rbx,8),%r10
                  │││  ││  0x00007fb6212408f3: movzwl 0x10(%r10,%r14,2),%r11d  ;*caload
                  │││  ││                                                ; - java.lang.String::charAt@27 (line 660)
                  │││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.23%    0.26%  │││  ││  0x00007fb6212408f9: cmp    $0xd800,%r11d
  0.65%    0.90%  │││  ││  0x00007fb621240900: jge    0x00007fb62124156d  ;*if_icmplt
                  │││  ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││  ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.66%    0.90%  │││  ││  0x00007fb621240906: shl    $0x3,%r11d         ;*ishl
                  │││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%           │││  ││  0x00007fb62124090a: mov    %r11d,%ebx
                  │││  ││  0x00007fb62124090d: or     $0x1,%ebx
  0.16%    0.15%  │││  ││  0x00007fb621240910: and    $0x7,%r11d
  0.57%    0.68%  │││  ││  0x00007fb621240914: sar    $0x3,%ebx          ;*ishr
                  │││  ││                                                ; - com.google.re2j.Machine::match@419 (line 260)
  0.17%    0.18%  │││  ││  0x00007fb621240917: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.28%    0.40%  │││  ││  0x00007fb62124091b: mov    %rdi,%r10
           0.01%  │││  ││  0x00007fb62124091e: mov    %r13d,%ebp         ;*aload
                  │││  ││                                                ; - com.google.re2j.Machine::match@429 (line 263)
  0.19%    0.20%  │││  ││  0x00007fb621240921: vmovq  %r10,%xmm0         ; OopMap{r10=Oop r9=NarrowOop xmm0=Oop [24]=Oop [72]=Oop [96]=Oop off=902}
                  │││  ││                                                ;*goto
                  │││  ││                                                ; - com.google.re2j.Machine::match@441 (line 266)
  0.17%    0.25%  │││  ││  0x00007fb621240926: test   %eax,0x180386d4(%rip)        # 0x00007fb639279000
                  │││  ││                                                ;*goto
                  │││  ││                                                ; - com.google.re2j.Machine::match@441 (line 266)
                  │││  ││                                                ;   {poll}
  0.35%    0.36%  │││  ││  0x00007fb62124092c: mov    0x28(%r10),%r14d   ;*getfield matchcap
                  │││  ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.00%    0.03%  │││  ││  0x00007fb621240930: mov    0x14(%r10),%r13d   ;*getfield re2
                  │││  ││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.13%    0.26%  │││  ││  0x00007fb621240934: mov    0x60(%rsp),%r10
  0.25%    0.17%  │││  ││  0x00007fb621240939: shr    $0x3,%r10
  0.32%    0.45%  │││  ││  0x00007fb62124093d: mov    %r10d,0x38(%rsp)
  0.06%    0.04%  │││  ││  0x00007fb621240942: mov    %ebp,%edi
  0.20%    0.18%  │││  ││  0x00007fb621240944: mov    0x2c(%rsp),%r10d
  0.15%    0.19%  │││  ││  0x00007fb621240949: mov    0x18(%rsp),%rdx
  0.29%    0.30%  │││  ││  0x00007fb62124094e: mov    %rdx,0x60(%rsp)
  0.03%    0.02%  │││  ││  0x00007fb621240953: mov    0x30(%rsp),%edx
  0.19%    0.22%  │││  ││  0x00007fb621240957: mov    %edx,0x28(%rsp)
  0.16%    0.17%  │││  ││  0x00007fb62124095b: mov    %r11d,0x30(%rsp)
  0.34%    0.32%  │││  ││  0x00007fb621240960: mov    %ecx,0x14(%rsp)
  0.03%    0.03%  │││  ││  0x00007fb621240964: vmovd  %r9d,%xmm4         ;*getfield matchcap
                  │││  ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.16%    0.17%  ↘││  ││  0x00007fb621240969: mov    0x38(%rsp),%r11d
  0.29%    0.35%   ││  ││  0x00007fb62124096e: movzbl 0x18(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fb62124221d
  0.79%    0.86%   ││  ││  0x00007fb621240974: shl    $0x3,%r11          ;*aload
                   ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%    0.00%   ││  ││  0x00007fb621240978: mov    %r11,0x18(%rsp)
  0.12%    0.18%   ││  ││  0x00007fb62124097d: test   %ecx,%ecx
                   ││  ││  0x00007fb62124097f: jne    0x00007fb621240bec  ;*iload_3
                   ││  ││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.35%    0.35%   ││  ││  0x00007fb621240985: test   %eax,%eax
                   ││  ││  0x00007fb621240987: jne    0x00007fb6212412a5  ;*ifne
                   ││  ││                                                ; - com.google.re2j.Machine::match@279 (line 237)
  0.16%    0.27%   ││  ││  0x00007fb62124098d: test   %r8d,%r8d
                   ││  ││  0x00007fb621240990: jne    0x00007fb621241389  ;*ifeq
                   ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
           0.02%   ││  ││  0x00007fb621240996: vmovq  %xmm0,%r9
  0.13%    0.21%   ││  ││  0x00007fb62124099b: mov    0x18(%r9),%r11d    ;*getfield prog
                   ││  ││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.32%    0.26%   ││  ││  0x00007fb62124099f: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                   ││  ││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                   ││  ││                                                ; implicit exception: dispatches to 0x00007fb62124222d
  0.20%    0.17%   ││  ││  0x00007fb6212409a4: vmovsd %xmm0,0x50(%rsp)
  0.01%    0.01%   ││  ││  0x00007fb6212409aa: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fb62124223d
  0.16%    0.19%   ││  ││  0x00007fb6212409af: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││  ││  0x00007fb6212409b6: jne    0x00007fb6212411b1
  0.38%    0.36%   ││  ││  0x00007fb6212409bc: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.20%    0.23%   ││  ││  0x00007fb6212409c0: mov    0x18(%r11),%ecx    ;*getfield pc
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
           0.01%   ││  ││  0x00007fb6212409c4: cmp    $0x40,%ecx
                   ││  ││  0x00007fb6212409c7: jg     0x00007fb6212413c9  ;*if_icmpgt
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.27%    0.21%   ││  ││  0x00007fb6212409cd: mov    %r11,%rdx
  0.23%    0.25%   ││  ││  0x00007fb6212409d0: mov    $0x1,%r10d
  0.20%    0.17%   ││  ││  0x00007fb6212409d6: shl    %cl,%r10           ;*lshl
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.62%    0.43%   ││  ││  0x00007fb6212409d9: mov    0x38(%rsp),%r11d
  0.20%    0.14%   ││  ││  0x00007fb6212409de: mov    0x10(%r12,%r11,8),%r11  ;*getfield pcsl
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.16%    0.12%   ││  ││  0x00007fb6212409e3: mov    %r11,%r9
  0.12%    0.11%   ││  ││  0x00007fb6212409e6: and    %r10,%r9           ;*land
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.46%    0.16%   ││  ││  0x00007fb6212409e9: test   %r9,%r9
                   ││  ││  0x00007fb6212409ec: jne    0x00007fb621241071  ;*ifeq
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.28%    0.11%   ││  ││  0x00007fb6212409f2: xor    %ebp,%ebp          ;*ireturn
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%            ││  ││  0x00007fb6212409f4: test   %r9,%r9
                   ││  ││  0x00007fb6212409f7: jne    0x00007fb62124141d  ;*ifeq
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.32%    0.15%   ││  ││  0x00007fb6212409fd: cmp    $0x40,%ecx
  0.22%    0.18%   ││  ││  0x00007fb621240a00: jge    0x00007fb621241475  ;*if_icmpge
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.14%    0.05%   ││  ││  0x00007fb621240a06: mov    0x38(%rsp),%r8d
  0.01%            ││  ││  0x00007fb621240a0b: mov    %r12b,0x18(%r12,%r8,8)  ;*putfield empty
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.31%    0.19%   ││  ││  0x00007fb621240a10: mov    0xc(%r12,%r8,8),%r9d  ;*getfield size
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.23%    0.17%   ││  ││  0x00007fb621240a15: mov    0x20(%r12,%r8,8),%ecx  ;*getfield denseThreadsInstructions
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.16%    0.08%   ││  ││  0x00007fb621240a1a: or     %r11,%r10
                   ││  ││  0x00007fb621240a1d: mov    %r10,0x10(%r12,%r8,8)  ;*putfield pcsl
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.27%    0.22%   ││  ││  0x00007fb621240a22: mov    %r9d,%r11d
  0.27%    0.24%   ││  ││  0x00007fb621240a25: inc    %r11d
  0.15%    0.21%   ││  ││  0x00007fb621240a28: mov    %r11d,0xc(%r12,%r8,8)  ;*putfield size
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%   ││  ││  0x00007fb621240a2d: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007fb62124225d
  0.56%    0.56%   ││  ││  0x00007fb621240a32: mov    %r9d,%r10d
  0.22%    0.10%   ││  ││  0x00007fb621240a35: cmp    %r8d,%r9d
                   ││  ││  0x00007fb621240a38: jae    0x00007fb6212410fe
  0.53%    0.46%   ││  ││  0x00007fb621240a3e: mov    0x8(%r12,%rcx,8),%r8d
  0.03%    0.01%   ││  ││  0x00007fb621240a43: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││  ││  0x00007fb621240a4a: jne    0x00007fb621241201  ;*aastore
                   ││  ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││  ││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.19%    0.17%   ││  ││  0x00007fb621240a50: test   %edi,%edi
                   │╰  ││  0x00007fb621240a52: jl     0x00007fb6212407d5  ;*ifge
                   │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │   ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.12%   │   ││  0x00007fb621240a58: xor    %r8d,%r8d          ;*iload_0
                   │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │   ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.35%    0.31%   ↘   ││  0x00007fb621240a5b: cmp    $0xa,%edi
                       ││  0x00007fb621240a5e: je     0x00007fb621240fc0  ;*iload_1
                       ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                       ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%                ││  0x00007fb621240a64: test   %ebx,%ebx
                       ││  0x00007fb621240a66: jl     0x00007fb621240e4d  ;*iload_1
                       ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                       ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.26%       ││  0x00007fb621240a6c: cmp    $0xa,%ebx
                       ││  0x00007fb621240a6f: je     0x00007fb621240fc9  ;*iload_0
                       ││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                       ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.13%       ││  0x00007fb621240a75: mov    %rdx,%r11
  0.39%    0.30%       ││  0x00007fb621240a78: shr    $0x3,%r11          ;*aastore
                       ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.02%       ││  0x00007fb621240a7c: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                       ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                       ││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.21%    0.21%       ││  0x00007fb621240a80: lea    0x10(%rcx,%r10,4),%rcx
  0.14%    0.11%       ││  0x00007fb621240a85: mov    %r11d,(%rcx)
  1.81%    1.80%       ││  0x00007fb621240a88: mov    %edi,%r10d
                       ││  0x00007fb621240a8b: add    $0xffffffbf,%r10d
  0.13%    0.12%       ││  0x00007fb621240a8f: mov    %rcx,%r11
  0.02%    0.03%       ││  0x00007fb621240a92: shr    $0x9,%r11
  0.50%    0.59%       ││  0x00007fb621240a96: movabs $0x7fb631c81000,%rcx
                       ││  0x00007fb621240aa0: mov    %r12b,(%rcx,%r11,1)  ;*aastore
                       ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                       ││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                       ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.72%    0.67%       ││  0x00007fb621240aa4: cmp    $0x1a,%r10d
                     ╭ ││  0x00007fb621240aa8: jb     0x00007fb621240abb  ;*if_icmple
                     │ ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │ ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.01%     │ ││  0x00007fb621240aaa: mov    %edi,%r11d
  0.45%    0.40%     │ ││  0x00007fb621240aad: add    $0xffffff9f,%r11d
                     │ ││  0x00007fb621240ab1: cmp    $0x1a,%r11d
                     │ ││  0x00007fb621240ab5: jae    0x00007fb62124102e  ;*iconst_1
                     │ ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │ ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.26%     ↘ ││  0x00007fb621240abb: mov    $0x1,%ebp          ;*ireturn
                       ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                       ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                       ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.15%       ││  0x00007fb621240ac0: mov    %ebx,%r10d
  0.34%    0.33%       ││  0x00007fb621240ac3: add    $0xffffffbf,%r10d
  0.05%    0.05%       ││  0x00007fb621240ac7: cmp    $0x1a,%r10d
                      ╭││  0x00007fb621240acb: jb     0x00007fb621240ade  ;*if_icmple
                      │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.16%    0.27%      │││  0x00007fb621240acd: mov    %ebx,%r11d
  0.11%    0.13%      │││  0x00007fb621240ad0: add    $0xffffff9f,%r11d
  0.35%    0.32%      │││  0x00007fb621240ad4: cmp    $0x1a,%r11d
                      │││  0x00007fb621240ad8: jae    0x00007fb62124104f  ;*iconst_1
                      │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.03%      ↘││  0x00007fb621240ade: mov    $0x1,%r10d         ;*invokevirtual endPos
                       ││                                                ; - com.google.re2j.Machine::match@348 (line 246)
  0.22%    0.20%       ││  0x00007fb621240ae4: mov    0x58(%rsp),%r11d
  0.90%    0.83%       ││  0x00007fb621240ae9: add    0x28(%rsp),%r11d   ;*iadd
                       ││                                                ; - com.google.re2j.Machine::match@340 (line 246)
  0.47%    0.41%       ││  0x00007fb621240aee: cmp    %r10d,%ebp
                       ╰│  0x00007fb621240af1: je     0x00007fb6212407e0  ;*if_icmpeq
                        │                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                        │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.04%        │  0x00007fb621240af7: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                        │                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.01%        │  0x00007fb621240afb: mov    %r8d,0x2c(%rsp)
  0.06%    0.04%        ╰  0x00007fb621240b00: jmpq   0x00007fb6212407e9
                           0x00007fb621240b05: data16 data16 nopw 0x0(%rax,%rax,1)
                           0x00007fb621240b10: mov    %r9d,0x50(%rsp)
  0.01%    0.01%           0x00007fb621240b15: jmpq   0x00007fb621240d83
                           0x00007fb621240b1a: mov    0x50(%rsp),%r11d
                           0x00007fb621240b1f: add    $0x2,%r11d
                           0x00007fb621240b23: mov    %r11d,0x50(%rsp)
  0.00%    0.00%           0x00007fb621240b28: mov    0x50(%rsp),%r11d
                           0x00007fb621240b2d: inc    %r11d
                           0x00007fb621240b30: mov    %r11d,0x44(%rsp)
                           0x00007fb621240b35: jmp    0x00007fb621240b62
                           0x00007fb621240b37: mov    0x50(%rsp),%r11d
                           0x00007fb621240b3c: add    $0x2,%r11d
                           0x00007fb621240b40: mov    %r11d,0x44(%rsp)
                           0x00007fb621240b45: jmp    0x00007fb621240b55
                           0x00007fb621240b47: mov    0x50(%rsp),%r11d
                           0x00007fb621240b4c: add    $0x2,%r11d
                           0x00007fb621240b50: mov    %r11d,0x50(%rsp)
....................................................................................................
 35.64%   37.04%  <total for region 2>

....[Hottest Regions]...............................................................................
 44.57%   44.09%         C2, level 4  com.google.re2j.Machine::step, version 496 (949 bytes) 
 35.64%   37.04%         C2, level 4  com.google.re2j.Machine::match, version 539 (856 bytes) 
  7.38%    6.56%         C2, level 4  com.google.re2j.Machine::step, version 496 (159 bytes) 
  6.80%    8.26%         C2, level 4  com.google.re2j.Machine::step, version 496 (349 bytes) 
  0.68%    0.72%         C2, level 4  com.google.re2j.Machine::match, version 539 (62 bytes) 
  0.53%    0.52%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.32%    0.16%         C2, level 4  com.google.re2j.Machine::match, version 539 (365 bytes) 
  0.32%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 552 (117 bytes) 
  0.17%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 552 (0 bytes) 
  0.17%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 539 (355 bytes) 
  0.16%    0.08%         C2, level 4  java.util.Collections::shuffle, version 562 (143 bytes) 
  0.15%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 539 (248 bytes) 
  0.12%    0.12%         C2, level 4  com.google.re2j.RE2::match, version 552 (0 bytes) 
  0.11%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 552 (28 bytes) 
  0.10%                  C2, level 4  com.google.re2j.RE2::match, version 552 (3 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 552 (108 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 552 (0 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (47 bytes) 
  0.08%    0.02%              [vdso]  [unknown] (2 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (25 bytes) 
  2.37%    1.99%  <...other 381 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.75%   58.92%         C2, level 4  com.google.re2j.Machine::step, version 496 
 37.25%   38.25%         C2, level 4  com.google.re2j.Machine::match, version 539 
  1.60%    1.29%   [kernel.kallsyms]  [unknown] 
  1.19%    0.40%         C2, level 4  com.google.re2j.RE2::match, version 552 
  0.25%    0.13%         C2, level 4  java.util.Collections::shuffle, version 562 
  0.14%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 597 
  0.13%    0.03%              [vdso]  [unknown] 
  0.05%    0.05%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.03%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.00%        libc-2.26.so  _IO_fflush 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.08%        libc-2.26.so  _IO_fwrite 
  0.01%    0.01%        libc-2.26.so  __strlen_avx2 
  0.01%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 561 
  0.01%    0.02%        libc-2.26.so  __strchrnul_avx2 
  0.01%    0.00%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.01%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.01%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.37%    0.21%  <...other 62 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 97.60%   97.76%         C2, level 4
  1.60%    1.29%   [kernel.kallsyms]
  0.34%    0.50%           libjvm.so
  0.20%    0.32%        libc-2.26.so
  0.13%    0.03%              [vdso]
  0.05%    0.05%      hsdis-amd64.so
  0.02%    0.03%  libpthread-2.26.so
  0.02%    0.00%         interpreter
  0.01%    0.01%        runtime stub
  0.01%                  C1, level 3
  0.00%                             
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  21905.653 ± 31.947  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
