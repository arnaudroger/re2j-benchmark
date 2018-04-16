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
# Warmup Iteration   1: 14318.636 ops/s
# Warmup Iteration   2: 28829.073 ops/s
# Warmup Iteration   3: 25646.514 ops/s
# Warmup Iteration   4: 28644.934 ops/s
# Warmup Iteration   5: 29663.572 ops/s
# Warmup Iteration   6: 29402.559 ops/s
# Warmup Iteration   7: 29860.790 ops/s
# Warmup Iteration   8: 29715.752 ops/s
# Warmup Iteration   9: 29751.593 ops/s
# Warmup Iteration  10: 29713.999 ops/s
# Warmup Iteration  11: 29563.014 ops/s
# Warmup Iteration  12: 29681.110 ops/s
# Warmup Iteration  13: 29547.799 ops/s
# Warmup Iteration  14: 29677.545 ops/s
# Warmup Iteration  15: 29948.447 ops/s
# Warmup Iteration  16: 29691.461 ops/s
# Warmup Iteration  17: 29560.185 ops/s
# Warmup Iteration  18: 29722.843 ops/s
# Warmup Iteration  19: 29941.365 ops/s
# Warmup Iteration  20: 29933.371 ops/s
Iteration   1: 29871.609 ops/s
Iteration   2: 29532.231 ops/s
Iteration   3: 28924.424 ops/s
Iteration   4: 29646.111 ops/s
Iteration   5: 29661.516 ops/s
Iteration   6: 29938.676 ops/s
Iteration   7: 29677.180 ops/s
Iteration   8: 29281.680 ops/s
Iteration   9: 29451.845 ops/s
Iteration  10: 29608.262 ops/s
Iteration  11: 29632.944 ops/s
Iteration  12: 29573.092 ops/s
Iteration  13: 28583.889 ops/s
Iteration  14: 29703.396 ops/s
Iteration  15: 29949.153 ops/s
Iteration  16: 29776.441 ops/s
Iteration  17: 29840.319 ops/s
Iteration  18: 29467.763 ops/s
Iteration  19: 29612.448 ops/s
Iteration  20: 29942.816 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  29583.790 ±(99.9%) 293.486 ops/s [Average]
  (min, avg, max) = (28583.889, 29583.790, 29949.153), stdev = 337.979
  CI (99.9%): [29290.304, 29877.276] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 208191 total address lines.
Perf output processed (skipped 23.094 seconds):
 Column 1: cycles (20392 events)
 Column 2: instructions (20375 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 536 (702 bytes) 

                      0x00007f6d08e19102: jae    0x00007f6d08e19811
                      0x00007f6d08e19108: mov    %r11,%r10
                      0x00007f6d08e1910b: mov    %rdi,%r8
                      0x00007f6d08e1910e: shr    $0x3,%r8
                      0x00007f6d08e19112: mov    %r8d,(%r11)
                      0x00007f6d08e19115: shr    $0x9,%r10
                      0x00007f6d08e19119: movabs $0x7f6d04601000,%r11
                      0x00007f6d08e19123: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.25%   ↗  0x00007f6d08e19127: mov    0x28(%rsp),%r13
  0.05%    0.04%   │  0x00007f6d08e1912c: mov    0x30(%rsp),%r11
           0.01%   │  0x00007f6d08e19131: mov    0xac(%rsp),%r9d
  0.49%    0.37%   │  0x00007f6d08e19139: mov    0xc(%rsp),%r14d
  0.21%    0.29%   │  0x00007f6d08e1913e: mov    0x38(%rsp),%rbx
  0.05%    0.08%   │  0x00007f6d08e19143: mov    0xa4(%rsp),%edi
  0.00%    0.00%   │  0x00007f6d08e1914a: mov    0x44(%rsp),%r10d   ;*aload
                   │                                                ; - com.google.re2j.Machine::step@219 (line 322)
  2.50%    2.66%  ↗│  0x00007f6d08e1914f: inc    %r10d              ;*iinc
                  ││                                                ; - com.google.re2j.Machine::step@230 (line 288)
  0.26%    0.21%  ││  0x00007f6d08e19152: cmp    %r9d,%r10d
                  ││  0x00007f6d08e19155: jge    0x00007f6d08e19593
  0.04%    0.07%  ││  0x00007f6d08e1915b: mov    %r11,%rax          ;*iload
                  ││                                                ; - com.google.re2j.Machine::step@43 (line 291)
  0.56%    0.68%  ││  0x00007f6d08e1915e: mov    0x10(%rbx,%r10,4),%r8d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine::step@99 (line 301)
  1.79%    1.90%  ││  0x00007f6d08e19163: mov    0xc(%r12,%r8,8),%r11d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::step@104 (line 303)
                  ││                                                ; implicit exception: dispatches to 0x00007f6d08e1a3e1
  0.72%    0.63%  ││  0x00007f6d08e19168: cmp    $0x6,%r11d
                  ││  0x00007f6d08e1916c: je     0x00007f6d08e19675  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Machine::step@109 (line 303)
  0.86%    0.98%  ││  0x00007f6d08e19172: cmp    $0xa,%r11d
                  ││  0x00007f6d08e19176: jne    0x00007f6d08e19520  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.27%    0.31%  ││  0x00007f6d08e1917c: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::step@199 (line 319)
  0.14%    0.09%  ││  0x00007f6d08e19181: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f6d08e1a3f1
  1.07%    1.17%  ││  0x00007f6d08e19186: lea    (%r12,%r11,8),%r8
  0.06%    0.05%  ││  0x00007f6d08e1918a: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ││  0x00007f6d08e19190: jne    0x00007f6d08e195c5  ;*invokevirtual add
                  ││                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.63%    0.66%  ││  0x00007f6d08e19196: mov    0x18(%r8),%ecx     ;*getfield pc
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.14%  ││  0x00007f6d08e1919a: mov    %rax,%r11
  0.04%    0.08%  ││  0x00007f6d08e1919d: mov    0x10(%rax),%rsi    ;*getfield pcsl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                  ││                                                ; implicit exception: dispatches to 0x00007f6d08e1a405
  0.08%    0.08%  ││  0x00007f6d08e191a1: cmp    $0x40,%ecx
                  ││  0x00007f6d08e191a4: jg     0x00007f6d08e1995d  ;*if_icmpgt
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.66%    0.69%  ││  0x00007f6d08e191aa: mov    $0x1,%edx
  0.04%    0.05%  ││  0x00007f6d08e191af: shl    %cl,%rdx           ;*lshl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.35%    1.38%  ││  0x00007f6d08e191b2: mov    %rsi,%rax
  0.03%    0.03%  ││  0x00007f6d08e191b5: and    %rdx,%rax
  0.00%    0.04%  ││  0x00007f6d08e191b8: test   %rax,%rax
                  ╰│  0x00007f6d08e191bb: jne    0x00007f6d08e1914f  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.47%    0.53%   │  0x00007f6d08e191bd: cmp    $0x40,%ecx
  0.18%    0.17%   │  0x00007f6d08e191c0: jge    0x00007f6d08e199cd  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.08%   │  0x00007f6d08e191c6: mov    %r12b,0x18(%r11)   ;*putfield empty
                   │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.02%   │  0x00007f6d08e191ca: mov    0x2c(%r8),%ebp     ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.50%    0.54%   │  0x00007f6d08e191ce: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.12%   │  0x00007f6d08e191d1: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.09%   │  0x00007f6d08e191d5: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f6d08e1a419
  0.97%    0.88%   │  0x00007f6d08e191da: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007f6d08e191e0: jne    0x00007f6d08e19725
  0.71%    0.57%   │  0x00007f6d08e191e6: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
           0.02%   │  0x00007f6d08e191ea: mov    0x18(%rax),%ecx    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.43%    0.41%   │  0x00007f6d08e191ed: cmp    $0x40,%ecx
                   │  0x00007f6d08e191f0: jg     0x00007f6d08e19a39  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.52%    0.65%   │  0x00007f6d08e191f6: mov    $0x1,%esi
  0.18%    0.21%   │  0x00007f6d08e191fb: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.22%    1.50%   │  0x00007f6d08e191fe: mov    %rdx,%rbp
  0.09%    0.08%   │  0x00007f6d08e19201: and    %rsi,%rbp          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f6d08e19204: test   %rbp,%rbp
                   │  0x00007f6d08e19207: jne    0x00007f6d08e19aad  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.52%    0.60%   │  0x00007f6d08e1920d: cmp    $0x40,%ecx
                   │  0x00007f6d08e19210: jge    0x00007f6d08e19b29  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.18%   │  0x00007f6d08e19216: mov    %r10d,0x44(%rsp)
  0.05%    0.05%   │  0x00007f6d08e1921b: mov    %edi,0xa4(%rsp)
  0.02%            │  0x00007f6d08e19222: mov    %rbx,0x38(%rsp)
  0.51%    0.54%   │  0x00007f6d08e19227: mov    %r14d,0xc(%rsp)
  0.23%    0.21%   │  0x00007f6d08e1922c: mov    %r9d,0xac(%rsp)
  0.09%    0.02%   │  0x00007f6d08e19234: mov    %r11,0x30(%rsp)
                   │  0x00007f6d08e19239: mov    %r13,0x28(%rsp)
  0.48%    0.46%   │  0x00007f6d08e1923e: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.09%   │  0x00007f6d08e19241: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.07%    0.03%   │  0x00007f6d08e19245: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%            │  0x00007f6d08e19249: mov    %r10d,%r13d
  0.57%    0.41%   │  0x00007f6d08e1924c: mov    0xc(%r11),%r10d    ;*getfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.19%   │  0x00007f6d08e19250: mov    %r10d,%r14d
  0.09%    0.04%   │  0x00007f6d08e19253: inc    %r10d              ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%            │  0x00007f6d08e19256: vmovd  %r10d,%xmm0
  0.53%    0.39%   │  0x00007f6d08e1925b: mov    %r10d,0xc(%r11)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.10%   │  0x00007f6d08e1925f: mov    %r13d,%r10d
  0.05%    0.07%   │  0x00007f6d08e19262: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007f6d08e1a42d
           0.01%   │  0x00007f6d08e19267: mov    %r14d,%r10d
  0.47%    0.58%   │  0x00007f6d08e1926a: cmp    %ebx,%r10d
                   │  0x00007f6d08e1926d: jae    0x00007f6d08e196dd
  0.16%    0.09%   │  0x00007f6d08e19273: mov    %r13d,%r10d
  0.09%    0.04%   │  0x00007f6d08e19276: mov    0x8(%r12,%r10,8),%r11d
                   │  0x00007f6d08e1927b: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  0x00007f6d08e19282: jne    0x00007f6d08e19795  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.56%    0.51%   │  0x00007f6d08e19288: mov    0x34(%r8),%r10d    ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.25%    0.18%   │  0x00007f6d08e1928c: vmovd  %r10d,%xmm1
  0.03%    0.04%   │  0x00007f6d08e19291: mov    %rax,%r10
           0.00%   │  0x00007f6d08e19294: shr    $0x3,%r10          ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.51%    0.45%   │  0x00007f6d08e19298: lea    (%r12,%r13,8),%rdi  ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.26%   │  0x00007f6d08e1929c: lea    0x10(%rdi,%r14,4),%r11
  0.08%    0.06%   │  0x00007f6d08e192a1: mov    %r10d,(%r11)
  0.01%    0.01%   │  0x00007f6d08e192a4: mov    %r11,%r10
  0.38%    0.37%   │  0x00007f6d08e192a7: shr    $0x9,%r10
  0.16%    0.14%   │  0x00007f6d08e192ab: movabs $0x7f6d04601000,%r11
  0.06%    0.03%   │  0x00007f6d08e192b5: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%   │  0x00007f6d08e192b9: vmovd  %xmm1,%r10d
  0.44%    0.40%   │  0x00007f6d08e192be: mov    0x8(%r12,%r10,8),%r9d  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │                                                ; implicit exception: dispatches to 0x00007f6d08e1a449
  0.26%    0.12%   │  0x00007f6d08e192c3: movslq %r14d,%r10
  0.06%    0.12%   │  0x00007f6d08e192c6: lea    (%rdi,%r10,4),%rsi  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.01%   │  0x00007f6d08e192ca: mov    %rsi,%r11
  0.45%    0.49%   │  0x00007f6d08e192cd: add    $0x14,%r11         ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.23%    0.19%   │  0x00007f6d08e192d1: vmovd  %xmm1,%r10d
  0.10%    0.06%   │  0x00007f6d08e192d6: lea    (%r12,%r10,8),%r8
  0.01%    0.00%   │  0x00007f6d08e192da: mov    %r14d,%r10d
  0.42%    0.47%   │  0x00007f6d08e192dd: add    $0x2,%r10d         ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.16%   │  0x00007f6d08e192e1: cmp    $0xf8019885,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007f6d08e192e8: jne    0x00007f6d08e190a4  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.03%   │  0x00007f6d08e192ee: mov    0x2c(%r8),%ebp     ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.01%   │  0x00007f6d08e192f2: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f6d08e1a47d
  0.61%    0.29%   │  0x00007f6d08e192f7: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   │  0x00007f6d08e192fe: jne    0x00007f6d08e198f9
  0.31%    0.16%   │  0x00007f6d08e19304: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.02%   │  0x00007f6d08e19308: mov    0x18(%rax),%r8d    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.00%   │  0x00007f6d08e1930c: mov    %r8d,%ecx
  0.41%    0.14%   │  0x00007f6d08e1930f: cmp    $0x40,%r8d
                   │  0x00007f6d08e19313: jg     0x00007f6d08e19e69  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.28%    0.15%   │  0x00007f6d08e19319: mov    $0x1,%r9d
  0.05%    0.02%   │  0x00007f6d08e1931f: shl    %cl,%r9            ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.84%    0.61%   │  0x00007f6d08e19322: mov    %rdx,%r8
  0.07%    0.03%   │  0x00007f6d08e19325: and    %r9,%r8
  0.00%    0.01%   │  0x00007f6d08e19328: test   %r8,%r8
                   ╰  0x00007f6d08e1932b: jne    0x00007f6d08e19127  ;*ifeq
                                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.51%    0.39%      0x00007f6d08e19331: mov    %ecx,%r8d
  0.14%    0.13%      0x00007f6d08e19334: cmp    $0x40,%r8d
                      0x00007f6d08e19338: jge    0x00007f6d08e19ea5  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.09%    0.19%      0x00007f6d08e1933e: or     %r9,%rdx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
           0.01%      0x00007f6d08e19341: mov    0x30(%rsp),%r8
  0.52%    0.10%      0x00007f6d08e19346: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.10%      0x00007f6d08e1934a: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.15%      0x00007f6d08e1934d: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f6d08e1a491
  0.37%    0.32%      0x00007f6d08e19352: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                      0x00007f6d08e19359: jne    0x00007f6d08e19929
  0.63%    0.63%      0x00007f6d08e1935f: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.04%    0.12%      0x00007f6d08e19363: vmovq  %r8,%xmm1
  0.06%    0.07%      0x00007f6d08e19368: mov    0x18(%r8),%r8d     ;*getfield pc
                                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.14%    0.18%      0x00007f6d08e1936c: cmp    $0x40,%r8d
                      0x00007f6d08e19370: jg     0x00007f6d08e19ee1  ;*if_icmpgt
                                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.64%    0.91%      0x00007f6d08e19376: mov    $0x1,%r9d
  0.05%    0.09%      0x00007f6d08e1937c: mov    %r8d,%ecx
  0.02%    0.05%      0x00007f6d08e1937f: shl    %cl,%r9            ;*lshl
                                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  1.13%    1.27%      0x00007f6d08e19382: mov    %rdx,%r8
  0.02%    0.02%      0x00007f6d08e19385: and    %r9,%r8            ;*land
                                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
                      0x00007f6d08e19388: test   %r8,%r8
                      0x00007f6d08e1938b: jne    0x00007f6d08e19f25  ;*ifeq
                                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.46%    0.54%      0x00007f6d08e19391: mov    %ecx,%r8d
  0.24%    0.31%      0x00007f6d08e19394: cmp    $0x40,%r8d
                      0x00007f6d08e19398: jge    0x00007f6d08e19f7d  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.05%      0x00007f6d08e1939e: mov    0x30(%rsp),%r8
                      0x00007f6d08e193a3: mov    %r10d,0xc(%r8)     ;*putfield size
                                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.43%    0.55%      0x00007f6d08e193a7: or     %r9,%rdx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.28%      0x00007f6d08e193aa: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.08%      0x00007f6d08e193ae: cmp    %ebx,%r10d
                      0x00007f6d08e193b1: jae    0x00007f6d08e19879  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%      0x00007f6d08e193b7: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.49%    0.57%      0x00007f6d08e193bb: mov    %r11,%r8
  0.22%    0.25%      0x00007f6d08e193be: vmovq  %xmm1,%r9
  0.08%    0.05%      0x00007f6d08e193c3: shr    $0x3,%r9
  0.00%    0.00%      0x00007f6d08e193c7: mov    %r9d,(%r11)
  0.44%    0.61%      0x00007f6d08e193ca: shr    $0x9,%r8
  0.26%    0.26%      0x00007f6d08e193ce: movabs $0x7f6d04601000,%r11
  0.05%    0.04%      0x00007f6d08e193d8: mov    %r12b,(%r11,%r8,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%      0x00007f6d08e193dc: mov    0x8(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f6d08e1a4a5
  0.52%    0.58%      0x00007f6d08e193e1: lea    (%r12,%r10,8),%r11
  0.25%    0.27%      0x00007f6d08e193e5: cmp    $0xf8019885,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                      0x00007f6d08e193ec: jne    0x00007f6d08e194a1  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
                      0x00007f6d08e193f2: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@82 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
....................................................................................................
 38.23%   37.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 586 (1142 bytes) 

                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@69 (line 195)
                               0x00007f6d08e398c3: cmp    $0xd800,%r11d
                               0x00007f6d08e398ca: jge    0x00007f6d08e3aefd  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@69 (line 195)
  0.01%                        0x00007f6d08e398d0: shl    $0x3,%r11d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@69 (line 195)
                               0x00007f6d08e398d4: mov    %r11d,%r10d
                               0x00007f6d08e398d7: and    $0x7,%r10d
                               0x00007f6d08e398db: or     $0x1,%r11d
  0.01%                        0x00007f6d08e398df: mov    %r11d,%ebp
                               0x00007f6d08e398e2: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@69 (line 195)
                               0x00007f6d08e398e6: mov    %r10d,0x28(%rsp)
  0.00%    0.00%               0x00007f6d08e398eb: mov    %r11d,%edi
  0.01%    0.01%               0x00007f6d08e398ee: sar    $0x3,%edi          ;*ishr
                                                                             ; - com.google.re2j.Machine::match@77 (line 196)
  0.01%                        0x00007f6d08e398f1: cmp    $0xfffffff8,%r11d
                               0x00007f6d08e398f5: je     0x00007f6d08e3aa24  ;*if_icmpeq
                                                                             ; - com.google.re2j.Machine::match@97 (line 200)
                               0x00007f6d08e398fb: vmovd  %xmm1,%r10d
                               0x00007f6d08e39900: add    0x28(%rsp),%r10d
  0.02%    0.04%               0x00007f6d08e39905: add    %r13d,%r10d        ;*iadd
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%                        0x00007f6d08e39908: vmovd  %r10d,%xmm0
           0.00%               0x00007f6d08e3990d: cmp    0x6c(%rsp),%r10d
                               0x00007f6d08e39912: jge    0x00007f6d08e3a290  ;*if_icmpge
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
                               0x00007f6d08e39918: test   %r10d,%r10d
                               0x00007f6d08e3991b: jl     0x00007f6d08e3ad85  ;*iflt
                                                                             ; - java.lang.String::charAt@1 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.00%               0x00007f6d08e39921: cmp    %eax,%r10d
                               0x00007f6d08e39924: jge    0x00007f6d08e3af61  ;*if_icmplt
                                                                             ; - java.lang.String::charAt@10 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.00%               0x00007f6d08e3992a: cmp    %eax,%r10d
                               0x00007f6d08e3992d: jae    0x00007f6d08e3aad1
  0.01%    0.01%               0x00007f6d08e39933: movzwl 0x10(%r9,%r10,2),%r10d  ;*caload
                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%                        0x00007f6d08e39939: cmp    $0xd800,%r10d
                               0x00007f6d08e39940: jge    0x00007f6d08e3afd5  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%                        0x00007f6d08e39946: shl    $0x3,%r10d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
                               0x00007f6d08e3994a: mov    %r10d,%r11d
                               0x00007f6d08e3994d: or     $0x1,%r11d
                               0x00007f6d08e39951: and    $0x7,%r10d
           0.00%               0x00007f6d08e39955: sar    $0x3,%r11d         ;*ishr
                                                                             ; - com.google.re2j.Machine::match@113 (line 202)
  0.00%                        0x00007f6d08e39959: mov    %r11d,0x38(%rsp)
  0.00%    0.01%               0x00007f6d08e3995e: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@105 (line 201)
                               0x00007f6d08e39962: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                             ; - com.google.re2j.Machine::match@113 (line 202)
  0.01%                        0x00007f6d08e39967: vmovd  %xmm1,%r11d
                               0x00007f6d08e3996c: test   %r11d,%r11d
                               0x00007f6d08e3996f: jne    0x00007f6d08e3ad25  ;*ifne
                                                                             ; - com.google.re2j.Machine::match@124 (line 206)
                               0x00007f6d08e39975: test   %edi,%edi
                               0x00007f6d08e39977: jl     0x00007f6d08e3a26f  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@130 (line 207)
                               0x00007f6d08e3997d: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@130 (line 207)
  0.01%                        0x00007f6d08e39983: cmp    $0xa,%edi
                               0x00007f6d08e39986: je     0x00007f6d08e3a287  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@130 (line 207)
                               0x00007f6d08e3998c: mov    %edi,%r11d
                               0x00007f6d08e3998f: add    $0xffffffbf,%r11d
                               0x00007f6d08e39993: cmp    $0x1a,%r11d
                  ╭            0x00007f6d08e39997: jb     0x00007f6d08e399aa  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%    0.00%  │            0x00007f6d08e39999: mov    %edi,%r9d
                  │            0x00007f6d08e3999c: add    $0xffffff9f,%r9d
                  │            0x00007f6d08e399a0: cmp    $0x1a,%r9d
                  │            0x00007f6d08e399a4: jae    0x00007f6d08e3a2a8  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@130 (line 207)
                  ↘            0x00007f6d08e399aa: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%    0.01%               0x00007f6d08e399ae: mov    0x3c(%rsp),%r11d
  0.01%    0.00%               0x00007f6d08e399b3: test   %r11d,%r11d
                               0x00007f6d08e399b6: jne    0x00007f6d08e3abb9
  0.01%                        0x00007f6d08e399bc: mov    0x4c(%rsp),%r9d
                               0x00007f6d08e399c1: mov    0x8(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007f6d08e3abb9
  0.00%    0.01%               0x00007f6d08e399c6: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                               0x00007f6d08e399cd: jne    0x00007f6d08e3abb9  ;*aload
                                                                             ; - com.google.re2j.Machine::match@145 (line 213)
           0.00%               0x00007f6d08e399d3: mov    0x40(%rsp),%r11
                               0x00007f6d08e399d8: movzbl 0x11(%r11),%r9d    ;*getfield captures
                                                                             ; - com.google.re2j.Machine::match@292 (line 242)
  0.00%                        0x00007f6d08e399dd: mov    0x4c(%rsp),%r11d
                               0x00007f6d08e399e2: shl    $0x3,%r11          ;*invokevirtual add
                                                                             ; - com.google.re2j.Machine::match@322 (line 245)
                               0x00007f6d08e399e6: mov    %r11,0x58(%rsp)
                               0x00007f6d08e399eb: mov    %rbx,%r11
                               0x00007f6d08e399ee: shl    $0x3,%r11          ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@62 (line 194)
  0.00%                        0x00007f6d08e399f2: mov    0x58(%rsp),%rcx
           0.00%               0x00007f6d08e399f7: shr    $0x3,%rcx          ;*aastore
                                                                             ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                             ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%                        0x00007f6d08e399fb: mov    %ecx,0x14(%rsp)
                               0x00007f6d08e399ff: mov    %r11,0x70(%rsp)
  0.00%                        0x00007f6d08e39a04: xor    %eax,%eax
                               0x00007f6d08e39a06: mov    $0x1,%r11d
                               0x00007f6d08e39a0c: xor    %ebx,%ebx
                               0x00007f6d08e39a0e: mov    %r11d,0x24(%rsp)
  0.00%                        0x00007f6d08e39a13: mov    %ebx,0x20(%rsp)
                   ╭           0x00007f6d08e39a17: jmpq   0x00007f6d08e39b7d
  0.08%    0.12%   │    ↗      0x00007f6d08e39a1c: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                    ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.07%   │    │      0x00007f6d08e39a20: mov    %r9d,0x34(%rsp)    ;*iload_2
                   │    │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                    ; - com.google.re2j.Machine::match@330 (line 247)
  0.15%    0.11%   │    │↗     0x00007f6d08e39a25: mov    0x60(%rsp),%r10d
  0.29%    0.36%   │    ││     0x00007f6d08e39a2a: cmp    0x6c(%rsp),%r10d
                   │    ││     0x00007f6d08e39a2f: je     0x00007f6d08e3a1ae  ;*if_icmpne
                   │    ││                                                   ; - com.google.re2j.Machine::match@355 (line 248)
  0.21%    0.19%   │    ││     0x00007f6d08e39a35: xor    %r10d,%r10d
  0.20%    0.13%   │    ││     0x00007f6d08e39a38: mov    0x40(%rsp),%rsi
  0.12%    0.09%   │    ││     0x00007f6d08e39a3d: mov    0x18(%rsp),%rdx
  0.28%    0.48%   │    ││     0x00007f6d08e39a42: mov    0x70(%rsp),%rcx
  0.16%    0.17%   │    ││     0x00007f6d08e39a47: mov    0x60(%rsp),%r8d
  0.17%    0.11%   │    ││     0x00007f6d08e39a4c: mov    0x20(%rsp),%r9d
  0.25%    0.13%   │    ││     0x00007f6d08e39a51: mov    0x34(%rsp),%ebx
  0.30%    0.37%   │    ││     0x00007f6d08e39a55: mov    %ebx,(%rsp)
  0.17%    0.18%   │    ││     0x00007f6d08e39a58: xor    %ebx,%ebx
  0.07%    0.13%   │    ││     0x00007f6d08e39a5a: mov    %ebx,0x8(%rsp)
  0.18%    0.13%   │    ││     0x00007f6d08e39a5e: mov    %r10d,0x10(%rsp)
  0.38%    0.25%   │    ││     0x00007f6d08e39a63: callq  0x00007f6d08c19020  ; OopMap{[20]=NarrowOop [24]=Oop [44]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [112]=Oop off=712}
                   │    ││                                                   ;*invokespecial step
                   │    ││                                                   ; - com.google.re2j.Machine::match@363 (line 248)
                   │    ││                                                   ;   {optimized virtual_call}
  0.00%            │    ││     0x00007f6d08e39a68: mov    0x40(%rsp),%r10
  1.28%    1.49%   │    ││     0x00007f6d08e39a6d: movzbl 0x11(%r10),%r9d    ;*getfield captures
                   │    ││                                                   ; - com.google.re2j.Machine::match@375 (line 252)
  0.29%    0.32%   │    ││     0x00007f6d08e39a72: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │    ││                                                   ; - com.google.re2j.Machine::match@382 (line 252)
  0.05%    0.08%   │    ││     0x00007f6d08e39a77: mov    0x28(%rsp),%r11d
  0.61%    0.83%   │    ││     0x00007f6d08e39a7c: test   %r11d,%r11d
                   │    ││     0x00007f6d08e39a7f: je     0x00007f6d08e3a1c8  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@368 (line 249)
  0.00%            │    ││     0x00007f6d08e39a85: test   %r9d,%r9d
                   │    ││     0x00007f6d08e39a88: jne    0x00007f6d08e3a4e5  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@378 (line 252)
  0.04%    0.02%   │    ││     0x00007f6d08e39a8e: test   %eax,%eax
                   │    ││     0x00007f6d08e39a90: jne    0x00007f6d08e3a6f5  ;*ifeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@385 (line 252)
  0.07%    0.05%   │    ││     0x00007f6d08e39a96: mov    0x50(%rsp),%r10
  0.60%    0.76%   │    ││     0x00007f6d08e39a9b: mov    0x10(%r10),%ecx    ;*getfield end
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.03%    0.00%   │    ││     0x00007f6d08e39a9f: mov    0xc(%r10),%r13d    ;*getfield start
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.02%            │    ││     0x00007f6d08e39aa3: mov    0x14(%r10),%r14d   ;*getfield str
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.12%    0.07%   │    ││     0x00007f6d08e39aa7: mov    0x38(%rsp),%r10d
  0.59%    0.74%   │    ││     0x00007f6d08e39aac: cmp    $0xffffffff,%r10d
                   │    ││     0x00007f6d08e39ab0: je     0x00007f6d08e3a1b9  ;*if_icmpeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@407 (line 260)
           0.00%   │    ││     0x00007f6d08e39ab6: mov    0x30(%rsp),%r8d
  0.02%    0.01%   │    ││     0x00007f6d08e39abb: add    0x20(%rsp),%r8d
  0.07%    0.05%   │    ││     0x00007f6d08e39ac0: add    %r13d,%r8d         ;*iadd
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.56%    1.07%   │    ││     0x00007f6d08e39ac3: cmp    %ecx,%r8d
                   │    ││     0x00007f6d08e39ac6: jge    0x00007f6d08e3a1e1  ;*if_icmpge
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
           0.00%   │    ││     0x00007f6d08e39acc: mov    0x8(%r12,%r14,8),%r10d  ; implicit exception: dispatches to 0x00007f6d08e3b689
  0.31%    0.37%   │    ││     0x00007f6d08e39ad1: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││     0x00007f6d08e39ad8: jne    0x00007f6d08e3a429
  0.37%    0.37%   │    ││     0x00007f6d08e39ade: lea    (%r12,%r14,8),%rbx  ;*invokeinterface charAt
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.34%    0.42%   │    ││     0x00007f6d08e39ae2: test   %r8d,%r8d
                   │    ││     0x00007f6d08e39ae5: jl     0x00007f6d08e3a535  ;*iflt
                   │    ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
                   │    ││     0x00007f6d08e39aeb: mov    0xc(%rbx),%r10d    ;*getfield value
                   │    ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.11%    0.22%   │    ││     0x00007f6d08e39aef: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │    ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
                   │    ││                                                   ; implicit exception: dispatches to 0x00007f6d08e3b69d
  2.59%    3.60%   │    ││     0x00007f6d08e39af4: cmp    %ebp,%r8d
                   │    ││     0x00007f6d08e39af7: jge    0x00007f6d08e3a745  ;*if_icmplt
                   │    ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.67%    0.93%   │    ││     0x00007f6d08e39afd: cmp    %ebp,%r8d
  0.00%    0.00%   │    ││     0x00007f6d08e39b00: jae    0x00007f6d08e3a351
  0.59%    0.92%   │    ││     0x00007f6d08e39b06: shl    $0x3,%r10
  0.06%    0.00%   │    ││     0x00007f6d08e39b0a: movzwl 0x10(%r10,%r8,2),%r11d  ;*caload
                   │    ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.09%    0.09%   │    ││     0x00007f6d08e39b10: cmp    $0xd800,%r11d
                   │    ││     0x00007f6d08e39b17: jge    0x00007f6d08e3a7bd  ;*if_icmplt
                   │    ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.24%    0.29%   │    ││     0x00007f6d08e39b1d: shl    $0x3,%r11d         ;*ishl
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                   ; - com.google.re2j.Machine::match@415 (line 261)
  0.50%    0.56%   │    ││     0x00007f6d08e39b21: mov    %r11d,%edx
  0.06%            │    ││     0x00007f6d08e39b24: or     $0x1,%edx
  1.02%    1.08%   │    ││     0x00007f6d08e39b27: and    $0x7,%r11d
  0.15%    0.24%   │    ││     0x00007f6d08e39b2b: sar    $0x3,%edx          ;*ishr
                   │    ││                                                   ; - com.google.re2j.Machine::match@423 (line 262)
  0.50%    0.60%   │    ││     0x00007f6d08e39b2e: or     $0x1,%r11d         ; OopMap{r14=NarrowOop [20]=NarrowOop [24]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [112]=Oop off=914}
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@445 (line 268)
  0.13%    0.12%   │    ││     0x00007f6d08e39b32: test   %eax,0x15f1f4c8(%rip)        # 0x00007f6d1ed59000
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@445 (line 268)
                   │    ││                                                   ;   {poll}
  0.06%    0.02%   │    ││     0x00007f6d08e39b38: mov    0x40(%rsp),%r10
  0.04%    0.09%   │    ││     0x00007f6d08e39b3d: mov    0x28(%r10),%r8d    ;*getfield matchcap
                   │    ││                                                   ; - com.google.re2j.Machine::match@311 (line 245)
  0.69%    0.70%   │    ││     0x00007f6d08e39b41: mov    0x14(%r10),%esi    ;*getfield re2
                   │    ││                                                   ; - com.google.re2j.Machine::match@178 (line 222)
  0.16%    0.15%   │    ││     0x00007f6d08e39b45: mov    0x70(%rsp),%r10
  0.01%    0.01%   │    ││     0x00007f6d08e39b4a: mov    %r10,%rbx
  0.05%    0.05%   │    ││     0x00007f6d08e39b4d: shr    $0x3,%rbx
  0.56%    0.61%   │    ││     0x00007f6d08e39b51: mov    %ebx,0x2c(%rsp)
  0.16%    0.14%   │    ││     0x00007f6d08e39b55: mov    0x34(%rsp),%r10d
  0.01%    0.01%   │    ││     0x00007f6d08e39b5a: mov    0x38(%rsp),%edi
  0.04%    0.06%   │    ││     0x00007f6d08e39b5e: mov    %edx,0x38(%rsp)
  0.56%    0.66%   │    ││     0x00007f6d08e39b62: mov    0x18(%rsp),%rbx
  0.16%    0.15%   │    ││     0x00007f6d08e39b67: mov    %rbx,0x70(%rsp)
  0.02%    0.00%   │    ││     0x00007f6d08e39b6c: mov    0x30(%rsp),%edx
  0.06%    0.09%   │    ││     0x00007f6d08e39b70: mov    %edx,0x28(%rsp)
  0.62%    0.58%   │    ││     0x00007f6d08e39b74: mov    %r11d,0x30(%rsp)
  0.17%    0.11%   │    ││     0x00007f6d08e39b79: mov    %ecx,0x6c(%rsp)    ;*getfield matchcap
                   │    ││                                                   ; - com.google.re2j.Machine::match@311 (line 245)
  0.02%    0.02%   ↘    ││     0x00007f6d08e39b7d: mov    0x2c(%rsp),%ecx
  0.04%    0.05%        ││     0x00007f6d08e39b81: movzbl 0x18(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f6d08e3b665
  0.52%    0.52%        ││     0x00007f6d08e39b87: shl    $0x3,%rcx          ;*aload
                        ││                                                   ; - com.google.re2j.Machine::match@145 (line 213)
  0.15%    0.13%        ││     0x00007f6d08e39b8b: mov    %rcx,0x18(%rsp)
  0.01%    0.01%        ││     0x00007f6d08e39b90: test   %r11d,%r11d
                        ││     0x00007f6d08e39b93: jne    0x00007f6d08e39df7  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine::match@150 (line 213)
  0.06%    0.04%        ││     0x00007f6d08e39b99: mov    0x20(%rsp),%r11d
  0.53%    0.58%        ││     0x00007f6d08e39b9e: mov    %r11d,0x60(%rsp)   ;*iload_3
                        ││                                                   ; - com.google.re2j.Machine::match@276 (line 239)
  0.13%    0.14%        ││     0x00007f6d08e39ba3: test   %eax,%eax
                        ││     0x00007f6d08e39ba5: jne    0x00007f6d08e3a49d  ;*ifne
                        ││                                                   ; - com.google.re2j.Machine::match@288 (line 239)
  0.02%    0.00%        ││     0x00007f6d08e39bab: test   %r9d,%r9d
                        ││     0x00007f6d08e39bae: jne    0x00007f6d08e3a5a9  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine::match@295 (line 242)
  0.06%    0.06%        ││     0x00007f6d08e39bb4: mov    0x58(%rsp),%r10
  0.50%    0.53%        ││     0x00007f6d08e39bb9: mov    0x18(%r10),%ecx    ;*getfield pc
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.14%        ││     0x00007f6d08e39bbd: cmp    $0x40,%ecx
  0.02%    0.01%        ││     0x00007f6d08e39bc0: jg     0x00007f6d08e3a5f5  ;*if_icmpgt
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.04%        ││     0x00007f6d08e39bc6: mov    0x2c(%rsp),%r11d
  0.52%    0.42%        ││     0x00007f6d08e39bcb: mov    0x10(%r12,%r11,8),%r11  ;*getfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.08%        ││     0x00007f6d08e39bd0: mov    $0x1,%ebx
  0.00%                 ││     0x00007f6d08e39bd5: shl    %cl,%rbx           ;*lshl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.71%    0.43%        ││     0x00007f6d08e39bd8: mov    %r11,%r10
  0.01%                 ││     0x00007f6d08e39bdb: and    %rbx,%r10          ;*land
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.04%        ││     0x00007f6d08e39bde: test   %r10,%r10
                        ││     0x00007f6d08e39be1: jne    0x00007f6d08e3a649  ;*ifeq
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.62%    0.22%        ││     0x00007f6d08e39be7: cmp    $0x40,%ecx
                        ││     0x00007f6d08e39bea: jge    0x00007f6d08e3a6a1  ;*if_icmpge
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.16%    0.12%        ││     0x00007f6d08e39bf0: mov    0x2c(%rsp),%r10d
           0.02%        ││     0x00007f6d08e39bf5: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.02%        ││     0x00007f6d08e39bfa: mov    0x20(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.45%    0.19%        ││     0x00007f6d08e39bff: mov    0x2c(%rsp),%r8d
  0.16%    0.07%        ││     0x00007f6d08e39c04: mov    0xc(%r12,%r8,8),%r8d  ;*getfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%        ││     0x00007f6d08e39c09: or     %r11,%rbx
  0.04%    0.01%        ││     0x00007f6d08e39c0c: mov    0x2c(%rsp),%r9d
  0.53%    0.22%        ││     0x00007f6d08e39c11: mov    %rbx,0x10(%r12,%r9,8)  ;*putfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.07%        ││     0x00007f6d08e39c16: mov    %r8d,%r9d
  0.00%    0.02%        ││     0x00007f6d08e39c19: inc    %r9d
  0.05%    0.00%        ││     0x00007f6d08e39c1c: mov    0x2c(%rsp),%r11d
  0.52%    0.32%        ││     0x00007f6d08e39c21: mov    %r9d,0xc(%r12,%r11,8)  ;*putfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.08%        ││     0x00007f6d08e39c26: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f6d08e3b675
  0.01%    0.01%        ││     0x00007f6d08e39c2b: cmp    %r9d,%r8d
                        ││     0x00007f6d08e39c2e: jae    0x00007f6d08e3a2f3
  0.08%    0.04%        ││     0x00007f6d08e39c34: mov    0x8(%r12,%r10,8),%r9d
  0.57%    0.53%        ││     0x00007f6d08e39c39: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
  0.15%    0.15%        ││     0x00007f6d08e39c40: jne    0x00007f6d08e3a3c9  ;*aastore
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                        ││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%        ││     0x00007f6d08e39c46: test   %edi,%edi
                    ╭   ││     0x00007f6d08e39c48: jl     0x00007f6d08e39d02  ;*ifge
                    │   ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │   ││                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.06%    │   ││     0x00007f6d08e39c4e: xor    %r9d,%r9d          ;*iload_0
                    │   ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │   ││                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.62%    0.44%    │   ││↗    0x00007f6d08e39c51: cmp    $0xa,%edi
                    │   │││    0x00007f6d08e39c54: je     0x00007f6d08e3a064  ;*iload_1
                    │   │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.14%    0.13%    │   │││    0x00007f6d08e39c5a: mov    0x38(%rsp),%ecx
  0.13%    0.10%    │   │││    0x00007f6d08e39c5e: test   %ecx,%ecx
                    │╭  │││    0x00007f6d08e39c60: jl     0x00007f6d08e39d0d  ;*iload_1
                    ││  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││  │││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.12%    0.11%    ││  │││↗   0x00007f6d08e39c66: cmp    $0xa,%ecx
                    ││  ││││   0x00007f6d08e39c69: je     0x00007f6d08e3a06d  ;*iload_0
                    ││  ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.51%    0.18%    ││  ││││   0x00007f6d08e39c6f: mov    %edi,%r11d
  0.15%    0.11%    ││  ││││   0x00007f6d08e39c72: add    $0xffffffbf,%r11d
  0.01%    0.01%    ││  ││││   0x00007f6d08e39c76: shl    $0x3,%r10          ;*getfield denseThreadsInstructions
                    ││  ││││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││  ││││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.13%    ││  ││││   0x00007f6d08e39c7a: lea    0x10(%r10,%r8,4),%r10
  0.56%    0.31%    ││  ││││   0x00007f6d08e39c7f: mov    0x14(%rsp),%ecx
  0.16%    0.09%    ││  ││││   0x00007f6d08e39c83: mov    %ecx,(%r10)
  0.17%    0.20%    ││  ││││   0x00007f6d08e39c86: shr    $0x9,%r10
  0.06%    0.06%    ││  ││││   0x00007f6d08e39c8a: movabs $0x7f6d04601000,%r8
  0.40%    0.44%    ││  ││││   0x00007f6d08e39c94: mov    %r12b,(%r8,%r10,1)  ;*aastore
                    ││  ││││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││  ││││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.21%    ││  ││││   0x00007f6d08e39c98: cmp    $0x1a,%r11d
                    ││╭ ││││   0x00007f6d08e39c9c: jb     0x00007f6d08e39caf  ;*if_icmple
                    │││ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.08%    0.08%    │││ ││││   0x00007f6d08e39c9e: mov    %edi,%r10d
  0.06%    0.06%    │││ ││││   0x00007f6d08e39ca1: add    $0xffffff9f,%r10d
  0.28%    0.46%    │││ ││││   0x00007f6d08e39ca5: cmp    $0x1a,%r10d
                    │││ ││││   0x00007f6d08e39ca9: jae    0x00007f6d08e3a224  ;*iconst_1
                    │││ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.11%    0.11%    ││↘ ││││   0x00007f6d08e39caf: mov    $0x1,%ebp          ;*ireturn
                    ││  ││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.07%    0.11%    ││  ││││   0x00007f6d08e39cb4: mov    0x38(%rsp),%r11d
  0.14%    0.17%    ││  ││││   0x00007f6d08e39cb9: add    $0xffffffbf,%r11d
  0.34%    0.47%    ││  ││││   0x00007f6d08e39cbd: cmp    $0x1a,%r11d
                    ││ ╭││││   0x00007f6d08e39cc1: jb     0x00007f6d08e39cd6  ;*if_icmple
                    ││ │││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.18%    0.15%    ││ │││││   0x00007f6d08e39cc3: mov    0x38(%rsp),%r10d
  0.16%    0.14%    ││ │││││   0x00007f6d08e39cc8: add    $0xffffff9f,%r10d
  0.13%    0.05%    ││ │││││   0x00007f6d08e39ccc: cmp    $0x1a,%r10d
                    ││ │││││   0x00007f6d08e39cd0: jae    0x00007f6d08e3a245  ;*iconst_1
                    ││ │││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.38%    0.41%    ││ ↘││││   0x00007f6d08e39cd6: mov    $0x1,%r11d         ;*invokevirtual endPos
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.29%    0.36%    ││  ││││   0x00007f6d08e39cdc: mov    0x60(%rsp),%r8d
  0.12%    0.16%    ││  ││││   0x00007f6d08e39ce1: add    0x28(%rsp),%r8d    ;*iadd
                    ││  ││││                                                 ; - com.google.re2j.Machine::match@344 (line 248)
  0.59%    0.54%    ││  ││││   0x00007f6d08e39ce6: mov    %r8d,0x20(%rsp)
  0.46%    0.52%    ││  ││││   0x00007f6d08e39ceb: cmp    %r11d,%ebp
                    ││  ╰│││   0x00007f6d08e39cee: je     0x00007f6d08e39a1c  ;*if_icmpeq
                    ││   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││   │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%             ││   │││   0x00007f6d08e39cf4: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││   │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.03%    0.04%    ││   │││   0x00007f6d08e39cf8: mov    %r9d,0x34(%rsp)
  0.48%    0.24%    ││   ╰││   0x00007f6d08e39cfd: jmpq   0x00007f6d08e39a25
                    ↘│    ││   0x00007f6d08e39d02: mov    $0x5,%r9d
                     │    ╰│   0x00007f6d08e39d08: jmpq   0x00007f6d08e39c51
           0.00%     ↘     │   0x00007f6d08e39d0d: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                 ; - com.google.re2j.Machine::match@330 (line 247)
                           ╰   0x00007f6d08e39d11: jmpq   0x00007f6d08e39c66
                               0x00007f6d08e39d16: data16 nopw 0x0(%rax,%rax,1)
                               0x00007f6d08e39d20: mov    %ebx,0x68(%rsp)
  0.01%    0.01%               0x00007f6d08e39d24: jmpq   0x00007f6d08e39fa6
                               0x00007f6d08e39d29: mov    0x68(%rsp),%r11d
                               0x00007f6d08e39d2e: add    $0x2,%r11d
                               0x00007f6d08e39d32: mov    %r11d,0x68(%rsp)
                               0x00007f6d08e39d37: mov    0x68(%rsp),%r11d
  0.00%                        0x00007f6d08e39d3c: inc    %r11d
                               0x00007f6d08e39d3f: mov    %r11d,0x64(%rsp)
  0.01%                        0x00007f6d08e39d44: jmp    0x00007f6d08e39d71
  0.00%                        0x00007f6d08e39d46: mov    0x68(%rsp),%r11d
                               0x00007f6d08e39d4b: add    $0x2,%r11d
                               0x00007f6d08e39d4f: mov    %r11d,0x64(%rsp)
                            ╭  0x00007f6d08e39d54: jmp    0x00007f6d08e39d64
                            │  0x00007f6d08e39d56: mov    0x68(%rsp),%r11d
                            │  0x00007f6d08e39d5b: add    $0x2,%r11d
                            │  0x00007f6d08e39d5f: mov    %r11d,0x68(%rsp)
                            ↘  0x00007f6d08e39d64: mov    0x68(%rsp),%r11d
                               0x00007f6d08e39d69: inc    %r11d              ;*iinc
                                                                             ; - java.lang.String::indexOf@69 (line 1772)
                                                                             ; - java.lang.String::indexOf@21 (line 1718)
....................................................................................................
 33.47%   34.03%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 536 (463 bytes) 

                        0x00007f6d08e1948a: mov    -0x8(%rsp),%rax
                        0x00007f6d08e1948f: mov    %rax,0x40(%rsp)
                        0x00007f6d08e19494: data16 xchg %ax,%ax
                        0x00007f6d08e19497: callq  0x00007f6d08bd81a0  ; OopMap{[12]=NarrowOop [28]=NarrowOop [32]=Oop [40]=Oop [48]=Oop [64]=Oop off=1212}
                                                                      ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@221 (line 322)
                                                                      ;   {runtime_call}
                        0x00007f6d08e1949c: callq  0x00007f6d1da46c50  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@221 (line 322)
                                                                      ;   {runtime_call}
  0.05%    0.07%        0x00007f6d08e194a1: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        0x00007f6d08e194a8: jne    0x00007f6d08e19cc1  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%                 0x00007f6d08e194ae: mov    0x18(%r11),%r10d   ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.48%    0.56%        0x00007f6d08e194b2: cmp    $0x40,%r10d
                        0x00007f6d08e194b6: jg     0x00007f6d08e19fc1  ;*if_icmpgt
                                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.29%        0x00007f6d08e194bc: mov    %r10d,%r8d
  0.07%    0.07%        0x00007f6d08e194bf: mov    %r11,%r10
  0.00%    0.01%        0x00007f6d08e194c2: mov    $0x1,%r11d
  0.42%    0.62%        0x00007f6d08e194c8: mov    %r8d,%ecx
  0.26%    0.24%        0x00007f6d08e194cb: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.49%    0.53%        0x00007f6d08e194ce: mov    %rdx,%r9
  0.26%    0.27%        0x00007f6d08e194d1: and    %r11,%r9           ;*land
                                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.08%    0.07%        0x00007f6d08e194d4: test   %r9,%r9
                        0x00007f6d08e194d7: jne    0x00007f6d08e1a025  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.00%        0x00007f6d08e194dd: cmp    $0x40,%r8d
                        0x00007f6d08e194e1: jge    0x00007f6d08e1a09d  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.57%    0.43%        0x00007f6d08e194e7: or     %r11,%rdx
  0.26%    0.24%        0x00007f6d08e194ea: mov    0x30(%rsp),%r11
  0.04%    0.11%        0x00007f6d08e194ef: mov    %rdx,0x10(%r11)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.02%        0x00007f6d08e194f3: add    $0x18,%rsi
  0.40%    0.48%        0x00007f6d08e194f7: shr    $0x3,%r10
  0.20%    0.18%        0x00007f6d08e194fb: mov    %r10d,(%rsi)       ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.05%        0x00007f6d08e194fe: mov    %rsi,%r10
  0.01%    0.00%        0x00007f6d08e19501: add    $0x3,%r14d
  0.38%    0.56%        0x00007f6d08e19505: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.29%    0.26%        0x00007f6d08e19509: shr    $0x9,%r10
  0.03%    0.05%        0x00007f6d08e1950d: movabs $0x7f6d04601000,%r11
           0.01%        0x00007f6d08e19517: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@96 (line 461)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 282)
  0.43%    0.47%        0x00007f6d08e1951b: jmpq   0x00007f6d08e19127
  0.65%    0.67%        0x00007f6d08e19520: cmp    $0xb,%r11d
                        0x00007f6d08e19524: je     0x00007f6d08e197dd  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                      ; - com.google.re2j.Machine::step@191 (line 318)
  1.85%    1.82%        0x00007f6d08e1952a: mov    0x1c(%r12,%r8,8),%ecx  ;*getfield f0
                                                                      ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                      ; - com.google.re2j.Machine::step@191 (line 318)
  0.05%    0.07%        0x00007f6d08e1952f: cmp    $0x9,%r11d
                  ╭     0x00007f6d08e19533: je     0x00007f6d08e1957e  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.42%    0.48%  │     0x00007f6d08e19535: cmp    $0xc,%r11d
                  │     0x00007f6d08e19539: jne    0x00007f6d08e19bfd  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │                                                   ; - com.google.re2j.Machine::step@191 (line 318)
  0.39%    0.42%  │     0x00007f6d08e1953f: cmp    0x18(%rsp),%ecx
                  │╭    0x00007f6d08e19543: je     0x00007f6d08e1966a  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
  0.42%    0.55%  ││    0x00007f6d08e19549: mov    0x20(%r12,%r8,8),%ecx  ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
  0.02%    0.01%  ││    0x00007f6d08e1954e: cmp    0x18(%rsp),%ecx
                  ││╭   0x00007f6d08e19552: je     0x00007f6d08e1966a  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.48%    0.63%  │││   0x00007f6d08e19558: mov    0x24(%r12,%r8,8),%ebp  ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.04%    0.05%  │││   0x00007f6d08e1955d: cmp    0x18(%rsp),%ebp
                  │││   0x00007f6d08e19561: je     0x00007f6d08e19c49  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.66%    0.80%  │││   0x00007f6d08e19567: mov    0x28(%r12,%r8,8),%ebp  ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.01%    0.01%  │││   0x00007f6d08e1956c: cmp    0x18(%rsp),%ebp
                  │││   0x00007f6d08e19570: je     0x00007f6d08e19c79  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst::matchRune@93 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.20%    0.29%  │││   0x00007f6d08e19576: xor    %r11d,%r11d
  0.03%    0.01%  │││   0x00007f6d08e19579: jmpq   0x00007f6d08e19093
  0.42%    0.34%  ↘││   0x00007f6d08e1957e: cmp    0x18(%rsp),%ecx
                   ││   0x00007f6d08e19582: jne    0x00007f6d08e19090  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   ││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.01%    0.00%   ││   0x00007f6d08e19588: mov    $0x1,%r11d
           0.01%   ││   0x00007f6d08e1958e: jmpq   0x00007f6d08e19093  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@40 (line 288)
  0.72%    0.63%   ││   0x00007f6d08e19593: movzbl 0x18(%r13),%r11d
                   ││   0x00007f6d08e19598: test   %r11d,%r11d
                   ││╭  0x00007f6d08e1959b: jne    0x00007f6d08e195b6  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
  0.00%            │││  0x00007f6d08e1959d: movb   $0x1,0x18(%r13)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
  0.00%            │││  0x00007f6d08e195a2: mov    0x1c(%r13),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
  0.70%    0.71%   │││  0x00007f6d08e195a6: mov    %r12d,0xc(%r13)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
                   │││  0x00007f6d08e195aa: mov    %r12,0x10(%r13)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 326)
           0.01%   │││  0x00007f6d08e195ae: test   %ebp,%ebp
                   │││  0x00007f6d08e195b0: jne    0x00007f6d08e19c31  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 283)
                   ││↘  0x00007f6d08e195b6: add    $0x90,%rsp
  0.59%    0.72%   ││   0x00007f6d08e195bd: pop    %rbp
                   ││   0x00007f6d08e195be: test   %eax,0x15f3fa3c(%rip)        # 0x00007f6d1ed59000
                   ││                                                 ;   {poll_return}
                   ││   0x00007f6d08e195c4: retq   
  0.01%            ││   0x00007f6d08e195c5: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││   0x00007f6d08e195cb: jne    0x00007f6d08e1a17d  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%            ││   0x00007f6d08e195d1: mov    0x18(%r8),%ecx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                   ││   0x00007f6d08e195d5: mov    %rax,%r11
                   ││   0x00007f6d08e195d8: mov    0x10(%rax),%rdx    ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                   ││                                                 ; implicit exception: dispatches to 0x00007f6d08e1a4cd
  0.01%    0.02%   ││   0x00007f6d08e195dc: cmp    $0x40,%ecx
                   ││   0x00007f6d08e195df: jg     0x00007f6d08e1a261  ;*if_icmpgt
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%            ││   0x00007f6d08e195e5: mov    $0x1,%esi
                   ││   0x00007f6d08e195ea: shl    %cl,%rsi           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.05%    0.00%   ││   0x00007f6d08e195ed: mov    %rdx,%rax
                   ││   0x00007f6d08e195f0: and    %rsi,%rax          ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%    0.00%   ││   0x00007f6d08e195f3: test   %rax,%rax
                   ││   0x00007f6d08e195f6: jne    0x00007f6d08e1a2d9  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%            ││   0x00007f6d08e195fc: cmp    $0x40,%ecx
                   ││   0x00007f6d08e195ff: jge    0x00007f6d08e1a359  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%            ││   0x00007f6d08e19605: mov    %r12b,0x18(%r11)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                   ││   0x00007f6d08e19609: mov    0x20(%r11),%ecx    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                   ││   0x00007f6d08e1960d: or     %rdx,%rsi
  0.01%    0.00%   ││   0x00007f6d08e19610: mov    %rsi,0x10(%r11)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.00%   ││   0x00007f6d08e19614: mov    0xc(%r11),%ebp     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.00%            ││   0x00007f6d08e19618: mov    %ebp,%esi
                   ││   0x00007f6d08e1961a: inc    %esi
  0.02%    0.00%   ││   0x00007f6d08e1961c: mov    %esi,0xc(%r11)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%            ││   0x00007f6d08e19620: mov    0xc(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f6d08e1a4e1
                   ││   0x00007f6d08e19625: cmp    %esi,%ebp
                   ││   0x00007f6d08e19627: jae    0x00007f6d08e1a101
  0.00%            ││   0x00007f6d08e1962d: mov    0x8(%r12,%rcx,8),%esi
  0.01%    0.03%   ││   0x00007f6d08e19632: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007f6d08e19638: jne    0x00007f6d08e1a1e5  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.02%    0.00%   ││   0x00007f6d08e1963e: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
                   ││   0x00007f6d08e19642: lea    0x10(%rcx,%rbp,4),%rcx
  0.01%            ││   0x00007f6d08e19647: mov    %r8,%rdx
  0.00%    0.01%   ││   0x00007f6d08e1964a: shr    $0x3,%rdx
  0.00%            ││   0x00007f6d08e1964e: mov    %edx,(%rcx)
  0.13%    0.02%   ││   0x00007f6d08e19650: mov    %rcx,%r8
                   ││   0x00007f6d08e19653: shr    $0x9,%r8
           0.00%   ││   0x00007f6d08e19657: movabs $0x7f6d04601000,%rcx
                   ││   0x00007f6d08e19661: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 319)
  0.01%    0.02%   ││   0x00007f6d08e19665: jmpq   0x00007f6d08e1914f  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst::matchRune@96 (line 103)
                   ││                                                 ; - com.google.re2j.Machine::step@191 (line 318)
  0.14%    0.21%   ↘↘   0x00007f6d08e1966a: mov    $0x1,%r11d
  0.08%    0.08%        0x00007f6d08e19670: jmpq   0x00007f6d08e19093
                        0x00007f6d08e19675: mov    $0xffffff65,%esi
                        0x00007f6d08e1967a: mov    %r10d,%ebp
                        0x00007f6d08e1967d: mov    %r8d,0xa4(%rsp)
                        0x00007f6d08e19685: mov    %r11d,0xac(%rsp)
                        0x00007f6d08e1968d: mov    %r13,0x28(%rsp)
                        0x00007f6d08e19692: mov    %rax,0x30(%rsp)
                        0x00007f6d08e19697: mov    0x10(%rsp),%r10d
                        0x00007f6d08e1969c: mov    %r10d,0xc(%rsp)
                        0x00007f6d08e196a1: mov    0x14(%rsp),%r10d
                        0x00007f6d08e196a6: mov    %r10d,0x10(%rsp)
....................................................................................................
 13.33%   14.29%  <total for region 3>

....[Hottest Regions]...............................................................................
 38.23%   37.71%         C2, level 4  com.google.re2j.Machine::step, version 536 (702 bytes) 
 33.47%   34.03%         C2, level 4  com.google.re2j.Machine::match, version 586 (1142 bytes) 
 13.33%   14.29%         C2, level 4  com.google.re2j.Machine::step, version 536 (463 bytes) 
  8.78%    9.16%         C2, level 4  com.google.re2j.Machine::step, version 536 (159 bytes) 
  1.56%    1.71%         C2, level 4  com.google.re2j.Machine::match, version 586 (70 bytes) 
  0.43%    0.42%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.36%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 587 (109 bytes) 
  0.27%    0.11%         C2, level 4  java.util.Collections::shuffle, version 599 (338 bytes) 
  0.26%    0.17%         C2, level 4  com.google.re2j.Machine::match, version 586 (255 bytes) 
  0.17%    0.15%         C2, level 4  com.google.re2j.Machine::match, version 586 (231 bytes) 
  0.17%    0.18%         C2, level 4  com.google.re2j.Machine::match, version 586 (275 bytes) 
  0.16%                  C2, level 4  com.google.re2j.RE2::match, version 587 (130 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 587 (23 bytes) 
  0.13%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 587 (8 bytes) 
  0.12%                  C2, level 4  com.google.re2j.RE2::match, version 587 (171 bytes) 
  0.11%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.11%    0.12%         C2, level 4  com.google.re2j.RE2::match, version 587 (33 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 587 (0 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (53 bytes) 
  0.09%    0.00%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 629 (96 bytes) 
  1.93%    1.69%  <...other 359 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.33%   61.16%         C2, level 4  com.google.re2j.Machine::step, version 536 
 35.83%   36.27%         C2, level 4  com.google.re2j.Machine::match, version 586 
  1.26%    0.40%         C2, level 4  com.google.re2j.RE2::match, version 587 
  1.18%    0.97%   [kernel.kallsyms]  [unknown] 
  0.30%    0.13%         C2, level 4  java.util.Collections::shuffle, version 599 
  0.17%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 629 
  0.06%    0.04%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.01%              [vdso]  [unknown] 
  0.04%    0.02%           libjvm.so  InstanceKlass::oop_push_contents 
  0.04%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.00%  libpthread-2.26.so  __libc_write 
  0.03%                       [vdso]  __vdso_clock_gettime 
  0.02%    0.01%           libjvm.so  fileStream::write 
  0.02%    0.03%        libc-2.26.so  __strlen_avx2 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.05%        libc-2.26.so  vfprintf 
  0.02%    0.06%           libjvm.so  RelocIterator::initialize 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 595 
  0.01%    0.00%           libjvm.so  StealTask::do_it 
  0.47%    0.37%  <...other 74 warm methods...>
....................................................................................................
 99.99%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.91%   98.04%         C2, level 4
  1.18%    0.97%   [kernel.kallsyms]
  0.49%    0.57%           libjvm.so
  0.17%    0.32%        libc-2.26.so
  0.08%    0.01%              [vdso]
  0.07%    0.01%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.03%    0.02%         interpreter
  0.00%    0.00%      perf-21373.map
  0.00%                    libzip.so
  0.00%    0.00%    Unknown, level 0
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  29583.790 ± 293.486  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
