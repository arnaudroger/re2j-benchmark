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
# Warmup Iteration   1: 16335.000 ops/s
# Warmup Iteration   2: 26978.103 ops/s
# Warmup Iteration   3: 24780.262 ops/s
# Warmup Iteration   4: 25018.633 ops/s
# Warmup Iteration   5: 26440.593 ops/s
# Warmup Iteration   6: 26651.910 ops/s
# Warmup Iteration   7: 27306.934 ops/s
# Warmup Iteration   8: 27132.865 ops/s
# Warmup Iteration   9: 27269.349 ops/s
# Warmup Iteration  10: 26847.207 ops/s
# Warmup Iteration  11: 26351.239 ops/s
# Warmup Iteration  12: 26959.875 ops/s
# Warmup Iteration  13: 26928.980 ops/s
# Warmup Iteration  14: 26802.066 ops/s
# Warmup Iteration  15: 26553.797 ops/s
# Warmup Iteration  16: 27115.847 ops/s
# Warmup Iteration  17: 26886.318 ops/s
# Warmup Iteration  18: 26589.762 ops/s
# Warmup Iteration  19: 26945.313 ops/s
# Warmup Iteration  20: 27156.010 ops/s
Iteration   1: 27082.724 ops/s
Iteration   2: 27045.888 ops/s
Iteration   3: 26806.457 ops/s
Iteration   4: 26894.103 ops/s
Iteration   5: 27145.471 ops/s
Iteration   6: 27258.187 ops/s
Iteration   7: 27001.383 ops/s
Iteration   8: 26865.301 ops/s
Iteration   9: 27276.723 ops/s
Iteration  10: 27106.369 ops/s
Iteration  11: 27026.044 ops/s
Iteration  12: 26986.039 ops/s
Iteration  13: 26976.269 ops/s
Iteration  14: 27134.477 ops/s
Iteration  15: 27166.564 ops/s
Iteration  16: 27028.818 ops/s
Iteration  17: 25921.465 ops/s
Iteration  18: 25298.542 ops/s
Iteration  19: 25713.125 ops/s
Iteration  20: 25724.250 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  26772.910 ±(99.9%) 512.177 ops/s [Average]
  (min, avg, max) = (25298.542, 26772.910, 27276.723), stdev = 589.824
  CI (99.9%): [26260.733, 27285.087] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 210970 total address lines.
Perf output processed (skipped 23.135 seconds):
 Column 1: cycles (20362 events)
 Column 2: instructions (20442 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 578 (1718 bytes) 

                                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                       0x00007f830c5dbc14: vmovd  %r10d,%xmm0
                                                       0x00007f830c5dbc19: mov    %rdx,0x70(%rsp)
                                                       0x00007f830c5dbc1e: mov    %ebx,0x2c(%rsp)
                                                       0x00007f830c5dbc22: mov    %ecx,%ebx
                                                       0x00007f830c5dbc24: mov    %edi,0x30(%rsp)
                                                       0x00007f830c5dbc28: mov    %r8d,0x68(%rsp)
  0.01%                                                0x00007f830c5dbc2d: mov    %r9d,%ecx
                                                       0x00007f830c5dbc30: mov    %r11,0x60(%rsp)
                                                       0x00007f830c5dbc35: mov    0xc(%rax),%r10d    ;*getfield value
                                                                                                     ; - java.lang.String::charAt@6 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                       0x00007f830c5dbc39: mov    %r10d,%edx
  0.01%                                                0x00007f830c5dbc3c: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                                                     ; - java.lang.String::charAt@9 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                                                                     ; implicit exception: dispatches to 0x00007f830c5dd519
           0.01%                                       0x00007f830c5dbc41: mov    %r10d,%edi
                                                       0x00007f830c5dbc44: vmovd  %xmm0,%r10d
                                                       0x00007f830c5dbc49: cmp    %edi,%r10d
                                                       0x00007f830c5dbc4c: jge    0x00007f830c5dd10d  ;*if_icmplt
                                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                       0x00007f830c5dbc52: cmp    %edi,%r10d
                                                       0x00007f830c5dbc55: jae    0x00007f830c5dce69
  0.01%                                                0x00007f830c5dbc5b: mov    %edx,%r10d
                                                       0x00007f830c5dbc5e: lea    (%r12,%r10,8),%r9
                                                       0x00007f830c5dbc62: vmovd  %xmm0,%r10d
                                                       0x00007f830c5dbc67: movzwl 0x10(%r9,%r10,2),%r11d  ;*caload
                                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
  0.00%                                                0x00007f830c5dbc6d: cmp    $0xd800,%r11d
                                                       0x00007f830c5dbc74: jge    0x00007f830c5dd151  ;*if_icmplt
                                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                       0x00007f830c5dbc7a: shl    $0x3,%r11d         ;*ishl
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                       0x00007f830c5dbc7e: mov    %r11d,%r10d
                                                       0x00007f830c5dbc81: and    $0x7,%r10d
  0.01%                                                0x00007f830c5dbc85: or     $0x1,%r11d
                                                       0x00007f830c5dbc89: vmovd  %r11d,%xmm0
           0.00%                                       0x00007f830c5dbc8e: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                       0x00007f830c5dbc92: mov    %r10d,0x20(%rsp)
  0.00%                                                0x00007f830c5dbc97: mov    %r11d,%r10d
                                                       0x00007f830c5dbc9a: sar    $0x3,%r10d         ;*ishr
                                                                                                     ; - com.google.re2j.Machine::match@77 (line 196)
                                                       0x00007f830c5dbc9e: vmovd  %r10d,%xmm2
                                                       0x00007f830c5dbca3: cmp    $0xfffffff8,%r11d
                                                       0x00007f830c5dbca7: je     0x00007f830c5dce04  ;*if_icmpeq
                                                                                                     ; - com.google.re2j.Machine::match@97 (line 200)
  0.00%                                                0x00007f830c5dbcad: vmovd  %xmm1,%r8d
                                                       0x00007f830c5dbcb2: add    0x20(%rsp),%r8d
  0.01%    0.00%                                       0x00007f830c5dbcb7: add    %r13d,%r8d         ;*iadd
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.02%                                                0x00007f830c5dbcba: cmp    %r14d,%r8d
                                                       0x00007f830c5dbcbd: jge    0x00007f830c5dc33d  ;*if_icmpge
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
           0.00%                                       0x00007f830c5dbcc3: test   %r8d,%r8d
                                                       0x00007f830c5dbcc6: jl     0x00007f830c5dd025  ;*iflt
                                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%                                                0x00007f830c5dbccc: cmp    %edi,%r8d
                                                       0x00007f830c5dbccf: jge    0x00007f830c5dd1ad  ;*if_icmplt
                                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
           0.01%                                       0x00007f830c5dbcd5: cmp    %edi,%r8d
                                                       0x00007f830c5dbcd8: jae    0x00007f830c5dcead
  0.00%                                                0x00007f830c5dbcde: movzwl 0x10(%r9,%r8,2),%r10d  ;*caload
                                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.02%    0.00%                                       0x00007f830c5dbce4: cmp    $0xd800,%r10d
                                                       0x00007f830c5dbceb: jge    0x00007f830c5dd1f1  ;*if_icmplt
                                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%                                                0x00007f830c5dbcf1: shl    $0x3,%r10d         ;*ishl
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
                                                       0x00007f830c5dbcf5: mov    %r10d,%r11d
                                                       0x00007f830c5dbcf8: and    $0x7,%r11d
           0.00%                                       0x00007f830c5dbcfc: or     $0x1,%r10d
                                                       0x00007f830c5dbd00: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%    0.00%                                       0x00007f830c5dbd04: sar    $0x3,%r10d         ;*iand
                                                                                                     ; - com.google.re2j.Machine::match@120 (line 203)
                                                       0x00007f830c5dbd08: vmovd  %xmm1,%r9d
                                                       0x00007f830c5dbd0d: test   %r9d,%r9d
                                                       0x00007f830c5dbd10: jne    0x00007f830c5dcfed  ;*ifne
                                                                                                     ; - com.google.re2j.Machine::match@124 (line 206)
                                                       0x00007f830c5dbd16: vmovd  %xmm2,%r8d
  0.00%    0.00%                                       0x00007f830c5dbd1b: test   %r8d,%r8d
                                                       0x00007f830c5dbd1e: jl     0x00007f830c5dc332  ;*ifge
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
                                                       0x00007f830c5dbd24: mov    $0x5,%r9d          ;*iload_1
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
                                                       0x00007f830c5dbd2a: cmp    $0xa,%r8d
                                                       0x00007f830c5dbd2e: je     0x00007f830c5dc34b  ;*iload_0
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
                                                       0x00007f830c5dbd34: mov    %r11d,0x28(%rsp)
  0.01%                                                0x00007f830c5dbd39: mov    %r10d,0x34(%rsp)
                                                       0x00007f830c5dbd3e: mov    %r8d,%r10d
                                                       0x00007f830c5dbd41: add    $0xffffffbf,%r10d
                                                       0x00007f830c5dbd45: cmp    $0x1a,%r10d
                  ╭                                    0x00007f830c5dbd49: jb     0x00007f830c5dbd5c  ;*if_icmple
                  │                                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                  ; - com.google.re2j.Machine::match@130 (line 207)
  0.01%           │                                    0x00007f830c5dbd4b: mov    %r8d,%r11d
                  │                                    0x00007f830c5dbd4e: add    $0xffffff9f,%r11d
                  │                                    0x00007f830c5dbd52: cmp    $0x1a,%r11d
                  │                                    0x00007f830c5dbd56: jae    0x00007f830c5dc354  ;*iconst_1
                  │                                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                  ; - com.google.re2j.Machine::match@130 (line 207)
           0.00%  ↘                                    0x00007f830c5dbd5c: or     $0x10,%r9d         ;*iload_2
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
           0.01%                                       0x00007f830c5dbd60: test   %ecx,%ecx
                                                       0x00007f830c5dbd62: jne    0x00007f830c5dcf65
  0.01%                                                0x00007f830c5dbd68: mov    %r8d,0x24(%rsp)
  0.02%    0.01%                                       0x00007f830c5dbd6d: mov    %ecx,0x38(%rsp)
  0.00%                                                0x00007f830c5dbd71: mov    0x30(%rsp),%r11d
  0.00%    0.00%                                       0x00007f830c5dbd76: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f830c5dcf65
  0.01%    0.01%                                       0x00007f830c5dbd7b: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                                                       0x00007f830c5dbd82: jne    0x00007f830c5dcf65  ;*aload
                                                                                                     ; - com.google.re2j.Machine::match@145 (line 213)
                                                       0x00007f830c5dbd88: lea    (%r12,%r11,8),%r10  ;*invokevirtual add
                                                                                                     ; - com.google.re2j.Machine::match@322 (line 245)
                                                       0x00007f830c5dbd8c: mov    %r10,0x78(%rsp)
                                                       0x00007f830c5dbd91: mov    0x68(%rsp),%r10d
                                                       0x00007f830c5dbd96: and    $0x4,%r10d         ;*iand
                                                                                                     ; - com.google.re2j.Machine::match@156 (line 214)
           0.01%                                       0x00007f830c5dbd9a: mov    %r10d,0x3c(%rsp)
                                                       0x00007f830c5dbd9f: mov    %rbx,%r10
  0.00%                                                0x00007f830c5dbda2: shl    $0x3,%r10          ;*getfield q1
                                                                                                     ; - com.google.re2j.Machine::match@62 (line 194)
                                                       0x00007f830c5dbda6: mov    %r10,0x50(%rsp)
                                                       0x00007f830c5dbdab: xor    %eax,%eax
                                                       0x00007f830c5dbdad: xor    %r10d,%r10d
                                                       0x00007f830c5dbdb0: mov    %r10d,0x40(%rsp)
                   ╭                                   0x00007f830c5dbdb5: jmpq   0x00007f830c5dc0ff
  0.30%    0.35%   │   ↗↗↗                             0x00007f830c5dbdba: mov    0x2c(%r12,%r8,8),%ebp  ;*getfield outInst
                   │   │││                                                                           ; - com.google.re2j.Machine::step@199 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.24%    0.19%   │   │││                             0x00007f830c5dbdbf: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f830c5dd479
  0.12%    0.11%   │   │││                             0x00007f830c5dbdc4: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │   │││                             0x00007f830c5dbdca: jne    0x00007f830c5dcb3d
  0.11%    0.08%   │   │││                             0x00007f830c5dbdd0: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.02%    0.01%   │   │││                             0x00007f830c5dbdd4: vmovq  %r8,%xmm1
  0.03%    0.00%   │   │││                             0x00007f830c5dbdd9: mov    0x18(%r8),%r8d     ;*getfield pc
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.04%    0.02%   │   │││                             0x00007f830c5dbddd: vmovd  %r8d,%xmm4
  0.09%    0.11%   │   │││                             0x00007f830c5dbde2: mov    0x50(%rsp),%r8
  0.03%    0.01%   │   │││                             0x00007f830c5dbde7: mov    0x10(%r8),%rdi     ;*getfield pcsl
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                   │   │││                                                                           ; implicit exception: dispatches to 0x00007f830c5dd495
  0.01%    0.02%   │   │││                             0x00007f830c5dbdeb: vmovd  %xmm4,%r8d
  0.10%    0.14%   │   │││                             0x00007f830c5dbdf0: cmp    $0x40,%r8d
                   │   │││                             0x00007f830c5dbdf4: jg     0x00007f830c5dcc3d  ;*if_icmpgt
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.12%    0.14%   │   │││                             0x00007f830c5dbdfa: mov    $0x1,%r8d
  0.01%    0.03%   │   │││                             0x00007f830c5dbe00: vmovd  %xmm4,%ecx
  0.10%    0.08%   │   │││                             0x00007f830c5dbe04: shl    %cl,%r8            ;*lshl
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.28%    0.43%   │   │││                             0x00007f830c5dbe07: mov    %rdi,%rcx
  0.00%    0.00%   │   │││                             0x00007f830c5dbe0a: and    %r8,%rcx           ;*land
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%    0.04%   │   │││                             0x00007f830c5dbe0d: test   %rcx,%rcx
                   │   │││                             0x00007f830c5dbe10: jne    0x00007f830c5dccd5  ;*ifeq
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.11%    0.20%   │   │││                             0x00007f830c5dbe16: vmovd  %xmm4,%ecx
  0.01%    0.02%   │   │││                             0x00007f830c5dbe1a: cmp    $0x40,%ecx
                   │   │││                             0x00007f830c5dbe1d: jge    0x00007f830c5dcd5d  ;*if_icmpge
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.05%    0.06%   │   │││                             0x00007f830c5dbe23: mov    0x50(%rsp),%rcx
                   │   │││                             0x00007f830c5dbe28: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.08%    0.11%   │   │││                             0x00007f830c5dbe2c: or     %rdi,%r8
  0.01%            │   │││                             0x00007f830c5dbe2f: mov    %r8,0x10(%rcx)     ;*putfield pcsl
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.10%    0.09%   │   │││                             0x00007f830c5dbe33: mov    0x20(%rcx),%r8d    ;*getfield denseThreadsInstructions
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
           0.00%   │   │││                             0x00007f830c5dbe37: mov    %r8d,%edi
  0.08%    0.08%   │   │││                             0x00007f830c5dbe3a: mov    0xc(%rcx),%ebp     ;*getfield size
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
           0.00%   │   │││                             0x00007f830c5dbe3d: mov    %ebp,%r8d
  0.05%    0.07%   │   │││                             0x00007f830c5dbe40: inc    %r8d
  0.02%            │   │││                             0x00007f830c5dbe43: mov    %r8d,0xc(%rcx)     ;*putfield size
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.08%    0.10%   │   │││                             0x00007f830c5dbe47: mov    %edi,%r8d
           0.00%   │   │││                             0x00007f830c5dbe4a: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f830c5dd4a9
  0.08%    0.05%   │   │││                             0x00007f830c5dbe4f: cmp    %ecx,%ebp
                   │   │││                             0x00007f830c5dbe51: jae    0x00007f830c5dcaa9
  0.10%    0.04%   │   │││                             0x00007f830c5dbe57: mov    0x8(%r12,%r8,8),%r8d
  0.10%    0.06%   │   │││                             0x00007f830c5dbe5c: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │   │││                             0x00007f830c5dbe63: jne    0x00007f830c5dcbad  ;*aastore
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
           0.01%   │   │││                             0x00007f830c5dbe69: mov    %edi,%r8d
  0.03%    0.08%   │   │││                             0x00007f830c5dbe6c: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.05%    0.02%   │   │││                             0x00007f830c5dbe70: lea    0x10(%r8,%rbp,4),%r8
  0.08%    0.08%   │   │││                             0x00007f830c5dbe75: vmovq  %xmm1,%rcx
  0.01%    0.01%   │   │││                             0x00007f830c5dbe7a: shr    $0x3,%rcx
  0.04%    0.01%   │   │││                             0x00007f830c5dbe7e: mov    %ecx,(%r8)
  0.22%    0.26%   │   │││                             0x00007f830c5dbe81: shr    $0x9,%r8
  0.05%    0.05%   │   │││                             0x00007f830c5dbe85: movabs $0x7f8307da6000,%rcx
           0.00%   │   │││                             0x00007f830c5dbe8f: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                   │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                   │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.18%    0.21%   │╭  │││                             0x00007f830c5dbe93: jmpq   0x00007f830c5dbfab
  0.27%    0.20%   ││  │││              ↗              0x00007f830c5dbe98: or     $0x20,%r9d         ;*iload_2
                   ││  │││              │                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││  │││              │                                                            ; - com.google.re2j.Machine::match@330 (line 247)
  0.31%    0.20%   ││  │││              │↗             0x00007f830c5dbe9c: mov    0x60(%rsp),%r10
  0.12%    0.06%   ││  │││              ││             0x00007f830c5dbea1: mov    0x14(%r10),%r11d   ;*getfield re2
                   ││  │││              ││                                                           ; - com.google.re2j.Machine::step@1 (line 282)
                   ││  │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.16%    0.15%   ││  │││              ││             0x00007f830c5dbea5: movzbl 0x18(%r12,%r11,8),%r13d  ;*getfield longest
                   ││  │││              ││                                                           ; - com.google.re2j.Machine::step@4 (line 282)
                   ││  │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                   ││  │││              ││                                                           ; implicit exception: dispatches to 0x00007f830c5dd415
  0.30%    0.32%   ││  │││              ││             0x00007f830c5dbeab: mov    0x2c(%rsp),%r10d
  0.19%    0.39%   ││  │││              ││             0x00007f830c5dbeb0: mov    0xc(%r12,%r10,8),%eax  ;*getfield size
                   ││  │││              ││                                                           ; - com.google.re2j.Machine::step@10 (line 283)
                   ││  │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.09%    0.10%   ││  │││              ││             0x00007f830c5dbeb5: mov    0x40(%rsp),%r11d
  0.12%    0.09%   ││  │││              ││             0x00007f830c5dbeba: add    0x20(%rsp),%r11d   ;*iadd
                   ││  │││              ││                                                           ; - com.google.re2j.Machine::match@344 (line 248)
  0.28%    0.28%   ││  │││              ││             0x00007f830c5dbebf: test   %eax,%eax
                   ││╭ │││              ││             0x00007f830c5dbec1: jle    0x00007f830c5dbfb3  ;*if_icmpge
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::step@40 (line 288)
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.35%    0.30%   │││ │││              ││             0x00007f830c5dbec7: mov    0x24(%r12,%r10,8),%r14d  ;*getfield denseThreadsCapture
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::step@28 (line 286)
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.04%    0.07%   │││ │││              ││             0x00007f830c5dbecc: mov    0x20(%r12,%r10,8),%r8d  ;*getfield denseThreadsInstructions
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::step@22 (line 285)
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.03%    0.08%   │││ │││              ││             0x00007f830c5dbed1: vmovd  %r8d,%xmm0
  0.23%    0.24%   │││ │││              ││             0x00007f830c5dbed6: mov    0x60(%rsp),%r10
  0.28%    0.23%   │││ │││              ││             0x00007f830c5dbedb: movzbl 0x11(%r10),%ecx    ;*getfield captures
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::step@16 (line 284)
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.07%    0.08%   │││ │││              ││             0x00007f830c5dbee0: mov    0x70(%rsp),%r10
  0.09%    0.12%   │││ │││              ││             0x00007f830c5dbee5: mov    0x10(%r10),%r10d
  0.28%    0.23%   │││ │││              ││             0x00007f830c5dbee9: mov    0x40(%rsp),%ebx
  0.31%    0.28%   │││ │││              ││             0x00007f830c5dbeed: mov    $0x1,%r8d
  0.06%    0.10%   │││ │││              ││             0x00007f830c5dbef3: xor    %esi,%esi
  0.06%    0.06%   │││ │││              ││             0x00007f830c5dbef5: cmp    %r10d,%ebx
  0.35%    0.29%   │││ │││              ││             0x00007f830c5dbef8: cmovne %esi,%r8d          ;*invokespecial step
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.43%    0.45%   │││ │││              ││             0x00007f830c5dbefc: vmovd  %r8d,%xmm2
  0.08%    0.12%   │││ │││              ││             0x00007f830c5dbf01: test   %ecx,%ecx
                   │││ │││              ││             0x00007f830c5dbf03: jne    0x00007f830c5dc6c5  ;*iload
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::step@43 (line 291)
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.35%    0.30%   │││ │││              ││             0x00007f830c5dbf09: vmovd  %xmm0,%r8d
  0.30%    0.24%   │││ │││              ││             0x00007f830c5dbf0e: mov    0xc(%r12,%r8,8),%r10d  ;*aaload
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::step@99 (line 301)
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                   │││ │││              ││                                                           ; implicit exception: dispatches to 0x00007f830c5dc6c5
  0.12%    0.11%   │││ │││              ││             0x00007f830c5dbf13: test   %r10d,%r10d
                   │││ │││              ││             0x00007f830c5dbf16: jbe    0x00007f830c5dc6c5
  0.12%    0.10%   │││ │││              ││             0x00007f830c5dbf1c: mov    %eax,%r8d
  0.31%    0.17%   │││ │││              ││             0x00007f830c5dbf1f: dec    %r8d
  0.28%    0.29%   │││ │││              ││             0x00007f830c5dbf22: cmp    %r10d,%r8d
                   │││ │││              ││             0x00007f830c5dbf25: jae    0x00007f830c5dc6c5
  0.08%    0.06%   │││ │││              ││             0x00007f830c5dbf2b: vmovd  %xmm0,%r10d
  0.13%    0.09%   │││ │││              ││             0x00007f830c5dbf30: lea    (%r12,%r10,8),%rbx
  0.32%    0.40%   │││ │││              ││             0x00007f830c5dbf34: xor    %r10d,%r10d
  0.34%    0.33%   │││ │││              ││             0x00007f830c5dbf37: nopw   0x0(%rax,%rax,1)   ;*iload
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::step@43 (line 291)
                   │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.27%    1.43%   │││ │││↗             ││             0x00007f830c5dbf40: mov    0x10(%rbx,%r10,4),%r8d  ;*aaload
                   │││ ││││             ││                                                           ; - com.google.re2j.Machine::step@99 (line 301)
                   │││ ││││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.51%    0.67%   │││ ││││             ││             0x00007f830c5dbf45: mov    0xc(%r12,%r8,8),%edi  ;*getfield op
                   │││ ││││             ││                                                           ; - com.google.re2j.Machine::step@104 (line 303)
                   │││ ││││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                   │││ ││││             ││                                                           ; implicit exception: dispatches to 0x00007f830c5dd3f5
  1.42%    1.36%   │││ ││││             ││             0x00007f830c5dbf4a: cmp    $0x6,%edi
                   │││╭││││             ││             0x00007f830c5dbf4d: je     0x00007f830c5dc2e8  ;*if_icmpne
                   ││││││││             ││                                                           ; - com.google.re2j.Machine::step@109 (line 303)
                   ││││││││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.17%    1.29%   ││││││││             ││             0x00007f830c5dbf53: cmp    $0xa,%edi
                   ││││╰│││             ││             0x00007f830c5dbf56: je     0x00007f830c5dbdba  ;*if_icmpne
                   ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.18%    1.25%   ││││ │││             ││             0x00007f830c5dbf5c: cmp    $0xb,%edi
                   ││││ │││             ││             0x00007f830c5dbf5f: je     0x00007f830c5dc40d  ;*if_icmpne
                   ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.99%    1.04%   ││││ │││             ││             0x00007f830c5dbf65: cmp    $0x9,%edi
                   ││││ │││             ││             0x00007f830c5dbf68: je     0x00007f830c5dc4a1  ;*if_icmpne
                   ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.15%    1.32%   ││││ │││             ││             0x00007f830c5dbf6e: cmp    $0xc,%edi
                   ││││ │││             ││             0x00007f830c5dbf71: jne    0x00007f830c5dc378  ;*if_icmpne
                   ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.69%    1.59%   ││││ │││             ││             0x00007f830c5dbf77: mov    0x1c(%r12,%r8,8),%edi  ;*getfield f0
                   ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.93%    1.07%   ││││ │││             ││             0x00007f830c5dbf7c: cmp    %edx,%edi
                   ││││ ╰││             ││             0x00007f830c5dbf7e: je     0x00007f830c5dbdba  ;*if_icmpeq
                   ││││  ││             ││                                                           ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   ││││  ││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││  ││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.39%    1.65%   ││││  ││             ││             0x00007f830c5dbf84: mov    0x20(%r12,%r8,8),%edi  ;*getfield f1
                   ││││  ││             ││                                                           ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   ││││  ││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││  ││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.70%    0.93%   ││││  ││             ││             0x00007f830c5dbf89: cmp    %edx,%edi
                   ││││  ╰│             ││             0x00007f830c5dbf8b: je     0x00007f830c5dbdba  ;*if_icmpeq
                   ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.29%    1.56%   ││││   │             ││             0x00007f830c5dbf91: mov    0x24(%r12,%r8,8),%edi  ;*getfield f2
                   ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.10%    1.11%   ││││   │             ││             0x00007f830c5dbf96: cmp    %edx,%edi
                   ││││   │             ││             0x00007f830c5dbf98: je     0x00007f830c5dc535  ;*if_icmpeq
                   ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.63%    1.71%   ││││   │             ││             0x00007f830c5dbf9e: mov    0x28(%r12,%r8,8),%edi  ;*getfield f3
                   ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.57%    0.53%   ││││   │             ││             0x00007f830c5dbfa3: cmp    %edx,%edi
                   ││││   │             ││             0x00007f830c5dbfa5: je     0x00007f830c5dc5b5  ;*aload
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::step@219 (line 322)
                   ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.08%    1.15%   │↘││   │             ││             0x00007f830c5dbfab: inc    %r10d              ;*iinc
                   │ ││   │             ││                                                           ; - com.google.re2j.Machine::step@230 (line 288)
                   │ ││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.80%    0.81%   │ ││   │             ││             0x00007f830c5dbfae: cmp    %eax,%r10d
                   │ ││   ╰             ││             0x00007f830c5dbfb1: jl     0x00007f830c5dbf40  ;*if_icmpge
                   │ ││                 ││                                                           ; - com.google.re2j.Machine::step@40 (line 288)
                   │ ││                 ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.21%    0.29%   │ ↘│                 ││             0x00007f830c5dbfb3: mov    0x2c(%rsp),%r8d
  0.22%    0.32%   │  │                 ││             0x00007f830c5dbfb8: movzbl 0x18(%r12,%r8,8),%r8d
  0.23%    0.24%   │  │                 ││             0x00007f830c5dbfbe: test   %r8d,%r8d
                   │  │    ╭            ││             0x00007f830c5dbfc1: jne    0x00007f830c5dbfe5  ;*ifeq
                   │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.26%    0.33%   │  │    │            ││             0x00007f830c5dbfc3: mov    0x2c(%rsp),%r10d
  0.16%    0.22%   │  │    │            ││             0x00007f830c5dbfc8: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                   │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.21%    0.23%   │  │    │            ││             0x00007f830c5dbfcd: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                   │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.50%    0.66%   │  │    │            ││             0x00007f830c5dbfd3: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                   │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.86%    1.19%   │  │    │            ││             0x00007f830c5dbfd8: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                   │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.41%    0.72%   │  │    │            ││             0x00007f830c5dbfdd: test   %ebp,%ebp
                   │  │    │            ││             0x00007f830c5dbfdf: jne    0x00007f830c5dc8cd  ;*invokevirtual clear
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                   │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.06%    0.08%   │  │    ↘            ││             0x00007f830c5dbfe5: mov    0x60(%rsp),%r10
  0.19%    0.24%   │  │                 ││             0x00007f830c5dbfea: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │  │                 ││                                                           ; - com.google.re2j.Machine::match@382 (line 252)
  0.32%    0.45%   │  │                 ││             0x00007f830c5dbfef: mov    0x60(%rsp),%r10
  0.21%    0.37%   │  │                 ││             0x00007f830c5dbff4: movzbl 0x11(%r10),%ebp    ;*getfield captures
                   │  │                 ││                                                           ; - com.google.re2j.Machine::match@375 (line 252)
  0.07%    0.03%   │  │                 ││             0x00007f830c5dbff9: mov    0x20(%rsp),%r10d
  0.15%    0.21%   │  │                 ││             0x00007f830c5dbffe: test   %r10d,%r10d
                   │  │     ╭           ││             0x00007f830c5dc001: je     0x00007f830c5dc24a  ;*ifne
                   │  │     │           ││                                                           ; - com.google.re2j.Machine::match@368 (line 249)
  0.44%    0.42%   │  │     │           ││             0x00007f830c5dc007: test   %ebp,%ebp
                   │  │     │           ││             0x00007f830c5dc009: jne    0x00007f830c5dc7a5  ;*ifne
                   │  │     │           ││                                                           ; - com.google.re2j.Machine::match@378 (line 252)
  0.27%    0.25%   │  │     │           ││             0x00007f830c5dc00f: test   %eax,%eax
                   │  │     │           ││             0x00007f830c5dc011: jne    0x00007f830c5dc889  ;*ifeq
                   │  │     │           ││                                                           ; - com.google.re2j.Machine::match@385 (line 252)
  0.06%    0.10%   │  │     │           ││             0x00007f830c5dc017: mov    0x34(%rsp),%r8d
  0.15%    0.16%   │  │     │           ││             0x00007f830c5dc01c: cmp    $0xffffffff,%r8d
                   │  │     │╭          ││             0x00007f830c5dc020: je     0x00007f830c5dc23b  ;*if_icmpeq
                   │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 260)
  0.32%    0.45%   │  │     ││          ││             0x00007f830c5dc026: mov    0x70(%rsp),%r10
  0.23%    0.26%   │  │     ││          ││             0x00007f830c5dc02b: mov    0x10(%r10),%r10d   ;*getfield end
                   │  │     ││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.08%    0.10%   │  │     ││          ││             0x00007f830c5dc02f: mov    0x28(%rsp),%ecx
  0.13%    0.13%   │  │     ││          ││             0x00007f830c5dc033: add    %r11d,%ecx
  0.31%    0.47%   │  │     ││          ││             0x00007f830c5dc036: mov    0x70(%rsp),%r8
  0.19%    0.22%   │  │     ││          ││             0x00007f830c5dc03b: add    0xc(%r8),%ecx      ;*iadd
                   │  │     ││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.33%    0.38%   │  │     ││          ││             0x00007f830c5dc03f: cmp    %r10d,%ecx
                   │  │     ││╭         ││             0x00007f830c5dc042: jge    0x00007f830c5dc22e  ;*if_icmpge
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.34%    0.58%   │  │     │││         ││             0x00007f830c5dc048: mov    0x14(%r8),%ebp     ;*getfield str
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.27%    0.38%   │  │     │││         ││             0x00007f830c5dc04c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f830c5dd425
  1.54%    1.87%   │  │     │││         ││             0x00007f830c5dc051: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │  │     │││         ││             0x00007f830c5dc058: jne    0x00007f830c5dc685
  0.52%    0.68%   │  │     │││         ││             0x00007f830c5dc05e: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.02%    0.01%   │  │     │││         ││             0x00007f830c5dc062: test   %ecx,%ecx
                   │  │     │││         ││             0x00007f830c5dc064: jl     0x00007f830c5dc7ed  ;*iflt
                   │  │     │││         ││                                                           ; - java.lang.String::charAt@1 (line 657)
                   │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.11%    0.15%   │  │     │││         ││             0x00007f830c5dc06a: mov    0xc(%rbx),%r8d     ;*getfield value
                   │  │     │││         ││                                                           ; - java.lang.String::charAt@6 (line 657)
                   │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.19%    0.32%   │  │     │││         ││             0x00007f830c5dc06e: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │  │     │││         ││                                                           ; - java.lang.String::charAt@9 (line 657)
                   │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
                   │  │     │││         ││                                                           ; implicit exception: dispatches to 0x00007f830c5dd439
  3.47%    4.40%   │  │     │││         ││             0x00007f830c5dc073: cmp    %ebp,%ecx
                   │  │     │││         ││             0x00007f830c5dc075: jge    0x00007f830c5dc909  ;*if_icmplt
                   │  │     │││         ││                                                           ; - java.lang.String::charAt@10 (line 657)
                   │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.74%    0.76%   │  │     │││         ││             0x00007f830c5dc07b: cmp    %ebp,%ecx
                   │  │     │││         ││             0x00007f830c5dc07d: jae    0x00007f830c5dc631
  0.04%    0.03%   │  │     │││         ││             0x00007f830c5dc083: lea    (%r12,%r8,8),%r10
  0.00%    0.01%   │  │     │││         ││             0x00007f830c5dc087: movzwl 0x10(%r10,%rcx,2),%r8d  ;*caload
                   │  │     │││         ││                                                           ; - java.lang.String::charAt@27 (line 660)
                   │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%            │  │     │││         ││             0x00007f830c5dc08d: cmp    $0xd800,%r8d
                   │  │     │││         ││             0x00007f830c5dc094: jge    0x00007f830c5dc961  ;*if_icmplt
                   │  │     │││         ││                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.70%    0.58%   │  │     │││         ││             0x00007f830c5dc09a: shl    $0x3,%r8d          ;*ishl
                   │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.04%    0.06%   │  │     │││         ││             0x00007f830c5dc09e: mov    %r8d,%ebx
                   │  │     │││         ││             0x00007f830c5dc0a1: and    $0x7,%ebx
  0.57%    0.45%   │  │     │││         ││             0x00007f830c5dc0a4: or     $0x1,%r8d
  0.14%    0.16%   │  │     │││         ││             0x00007f830c5dc0a8: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.51%    0.51%   │  │     │││         ││             0x00007f830c5dc0ab: sar    $0x3,%r8d          ; OopMap{[16]=Oop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1391}
                   │  │     │││         ││                                                           ;*goto
                   │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@445 (line 268)
  0.01%    0.01%   │  │     │││         ││  ↗↗         0x00007f830c5dc0af: test   %eax,0x15f53f4b(%rip)        # 0x00007f8322530000
                   │  │     │││         ││  ││                                                       ;*goto
                   │  │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@445 (line 268)
                   │  │     │││         ││  ││                                                       ;   {poll}
  0.02%    0.01%   │  │     │││         ││  ││         0x00007f830c5dc0b5: mov    0x60(%rsp),%r10
  0.18%    0.10%   │  │     │││         ││  ││         0x00007f830c5dc0ba: mov    0x14(%r10),%esi    ;*getfield re2
                   │  │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@178 (line 222)
  0.49%    0.49%   │  │     │││         ││  ││         0x00007f830c5dc0be: mov    0x28(%r10),%r10d   ;*getfield matchcap
                   │  │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@311 (line 245)
  0.00%            │  │     │││         ││  ││         0x00007f830c5dc0c2: mov    0x50(%rsp),%rcx
                   │  │     │││         ││  ││         0x00007f830c5dc0c7: mov    %rcx,%rdi
  0.14%    0.08%   │  │     │││         ││  ││         0x00007f830c5dc0ca: shr    $0x3,%rdi
  0.57%    0.51%   │  │     │││         ││  ││         0x00007f830c5dc0ce: mov    %edi,0x2c(%rsp)
  0.01%    0.01%   │  │     │││         ││  ││         0x00007f830c5dc0d2: mov    0x28(%rsp),%ecx
                   │  │     │││         ││  ││         0x00007f830c5dc0d6: mov    %ecx,0x20(%rsp)
  0.19%    0.19%   │  │     │││         ││  ││         0x00007f830c5dc0da: mov    %r11d,0x40(%rsp)
  0.62%    0.44%   │  │     │││         ││  ││         0x00007f830c5dc0df: mov    %ebx,0x28(%rsp)
  0.01%    0.01%   │  │     │││         ││  ││         0x00007f830c5dc0e3: mov    0x34(%rsp),%ecx
  0.00%            │  │     │││         ││  ││         0x00007f830c5dc0e7: mov    %ecx,0x24(%rsp)
  0.16%    0.14%   │  │     │││         ││  ││         0x00007f830c5dc0eb: mov    %r8d,0x34(%rsp)
  0.52%    0.43%   │  │     │││         ││  ││         0x00007f830c5dc0f0: mov    0x10(%rsp),%r11
  0.00%    0.01%   │  │     │││         ││  ││         0x00007f830c5dc0f5: mov    %r11,0x50(%rsp)
  0.00%            │  │     │││         ││  ││         0x00007f830c5dc0fa: vmovd  %r10d,%xmm3        ;*aload
                   │  │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@145 (line 213)
  0.23%    0.16%   ↘  │     │││         ││  ││         0x00007f830c5dc0ff: mov    0x2c(%rsp),%r11d
  0.57%    0.38%      │     │││         ││  ││         0x00007f830c5dc104: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f830c5dd405
  0.05%    0.02%      │     │││         ││  ││         0x00007f830c5dc10a: test   %r11d,%r11d
                      │     │││╭        ││  ││         0x00007f830c5dc10d: je     0x00007f830c5dc13c  ;*ifeq
                      │     ││││        ││  ││                                                       ; - com.google.re2j.Machine::match@150 (line 213)
  0.01%    0.00%      │     ││││        ││  ││         0x00007f830c5dc10f: mov    0x3c(%rsp),%r11d
  0.17%    0.22%      │     ││││        ││  ││         0x00007f830c5dc114: test   %r11d,%r11d
                      │     ││││        ││  ││         0x00007f830c5dc117: jne    0x00007f830c5dc9fd  ;*ifeq
                      │     ││││        ││  ││                                                       ; - com.google.re2j.Machine::match@157 (line 214)
  0.35%    0.19%      │     ││││        ││  ││         0x00007f830c5dc11d: test   %eax,%eax
                      │     ││││        ││  ││         0x00007f830c5dc11f: jne    0x00007f830c5dca51  ;*ifeq
                      │     ││││        ││  ││                                                       ; - com.google.re2j.Machine::match@171 (line 218)
  0.00%    0.00%      │     ││││        ││  ││         0x00007f830c5dc125: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                      │     ││││        ││  ││                                                       ; - com.google.re2j.Machine::match@181 (line 222)
                      │     ││││        ││  ││                                                       ; implicit exception: dispatches to 0x00007f830c5dd449
  0.02%    0.01%      │     ││││        ││  ││         0x00007f830c5dc12a: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                      │     ││││        ││  ││                                                       ; - java.lang.String::isEmpty@1 (line 635)
                      │     ││││        ││  ││                                                       ; - com.google.re2j.Machine::match@184 (line 222)
                      │     ││││        ││  ││                                                       ; implicit exception: dispatches to 0x00007f830c5dd459
  0.18%    0.17%      │     ││││        ││  ││         0x00007f830c5dc12f: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                      │     ││││        ││  ││                                                       ; - java.lang.String::isEmpty@4 (line 635)
                      │     ││││        ││  ││                                                       ; - com.google.re2j.Machine::match@184 (line 222)
                      │     ││││        ││  ││                                                       ; implicit exception: dispatches to 0x00007f830c5dd469
  0.53%    0.32%      │     ││││        ││  ││         0x00007f830c5dc134: test   %ebp,%ebp
                      │     ││││        ││  ││         0x00007f830c5dc136: jne    0x00007f830c5dc9b5  ;*iload_3
                      │     ││││        ││  ││                                                       ; - com.google.re2j.Machine::match@276 (line 239)
  0.09%    0.01%      │     │││↘        ││  ││         0x00007f830c5dc13c: test   %eax,%eax
                      │     │││         ││  ││         0x00007f830c5dc13e: jne    0x00007f830c5dc755  ;*ifne
                      │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@288 (line 239)
  0.00%    0.01%      │     │││         ││  ││         0x00007f830c5dc144: mov    0x60(%rsp),%r10
  0.21%    0.19%      │     │││         ││  ││         0x00007f830c5dc149: movzbl 0x11(%r10),%r10d   ;*getfield captures
                      │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@292 (line 242)
  0.47%    0.29%      │     │││         ││  ││         0x00007f830c5dc14e: test   %r10d,%r10d
                      │     │││         ││  ││         0x00007f830c5dc151: jne    0x00007f830c5dc839  ;*ifeq
                      │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@295 (line 242)
  0.04%    0.03%      │     │││         ││  ││         0x00007f830c5dc157: vmovd  %xmm3,%r8d
  0.02%    0.01%      │     │││         ││  ││         0x00007f830c5dc15c: shl    $0x3,%r8           ;*getfield matchcap
                      │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@311 (line 245)
  0.25%    0.18%      │     │││         ││  ││         0x00007f830c5dc160: mov    0x2c(%rsp),%ecx
  0.40%    0.22%      │     │││         ││  ││         0x00007f830c5dc164: lea    (%r12,%rcx,8),%r11  ;*aload
                      │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@145 (line 213)
  0.05%    0.01%      │     │││         ││  ││         0x00007f830c5dc168: mov    %r11,0x10(%rsp)
  0.01%    0.01%      │     │││         ││  ││         0x00007f830c5dc16d: mov    0x78(%rsp),%rsi
  0.31%    0.14%      │     │││         ││  ││         0x00007f830c5dc172: mov    %r11,%rdx
  0.43%    0.11%      │     │││         ││  ││         0x00007f830c5dc175: mov    0x40(%rsp),%ecx
  0.08%    0.00%      │     │││         ││  ││         0x00007f830c5dc179: xor    %edi,%edi
  0.02%    0.02%      │     │││         ││  ││         0x00007f830c5dc17b: mov    0x60(%rsp),%r11
  0.29%    0.11%      │     │││         ││  ││         0x00007f830c5dc180: mov    %r11,(%rsp)
  0.41%    0.05%      │     │││         ││  ││         0x00007f830c5dc184: mov    %r10d,0x8(%rsp)
  0.06%    0.02%      │     │││         ││  ││         0x00007f830c5dc189: xchg   %ax,%ax
  0.01%    0.00%      │     │││         ││  ││         0x00007f830c5dc18b: callq  0x00007f830c3be020  ; OopMap{[16]=Oop [44]=NarrowOop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1616}
                      │     │││         ││  ││                                                       ;*invokevirtual add
                      │     │││         ││  ││                                                       ; - com.google.re2j.Machine::match@322 (line 245)
                      │     │││         ││  ││                                                       ;   {optimized virtual_call}
  0.24%    0.30%      │     │││         ││  ││         0x00007f830c5dc190: mov    0x24(%rsp),%edx
  0.18%    0.12%      │     │││         ││  ││         0x00007f830c5dc194: test   %edx,%edx
                      │     │││ ╭       ││  ││         0x00007f830c5dc196: jl     0x00007f830c5dc21d  ;*ifge
                      │     │││ │       ││  ││                                                       ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                      │     │││ │       ││  ││                                                       ; - com.google.re2j.Machine::match@330 (line 247)
  0.29%    0.33%      │     │││ │       ││  ││         0x00007f830c5dc19c: xor    %r9d,%r9d          ;*iload_0
                      │     │││ │       ││  ││                                                       ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                      │     │││ │       ││  ││                                                       ; - com.google.re2j.Machine::match@330 (line 247)
  0.36%    0.23%      │     │││ │       ││↗ ││         0x00007f830c5dc19f: cmp    $0xa,%edx
                      │     │││ │╭      │││ ││         0x00007f830c5dc1a2: je     0x00007f830c5dc289  ;*iload_1
                      │     │││ ││      │││ ││                                                       ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                      │     │││ ││      │││ ││                                                       ; - com.google.re2j.Machine::match@330 (line 247)
  0.05%    0.07%      │     │││ ││      │││ ││ ↗       0x00007f830c5dc1a8: mov    0x34(%rsp),%r11d
  0.07%    0.01%      │     │││ ││      │││ ││ │       0x00007f830c5dc1ad: test   %r11d,%r11d
                      │     │││ ││╭     │││ ││ │       0x00007f830c5dc1b0: jl     0x00007f830c5dc228  ;*iload_1
                      │     │││ │││     │││ ││ │                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                      │     │││ │││     │││ ││ │                                                     ; - com.google.re2j.Machine::match@330 (line 247)
  0.37%    0.32%      │     │││ │││     │││↗││ │       0x00007f830c5dc1b2: cmp    $0xa,%r11d
                      │     │││ │││╭    ││││││ │       0x00007f830c5dc1b6: je     0x00007f830c5dc292  ;*iload_0
                      │     │││ ││││    ││││││ │                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                      │     │││ ││││    ││││││ │                                                     ; - com.google.re2j.Machine::match@330 (line 247)
  0.33%    0.32%      │     │││ ││││    ││││││ │↗      0x00007f830c5dc1bc: mov    0x24(%rsp),%r11d
  0.07%    0.09%      │     │││ ││││    ││││││ ││      0x00007f830c5dc1c1: add    $0xffffffbf,%r11d
  0.04%    0.04%      │     │││ ││││    ││││││ ││      0x00007f830c5dc1c5: cmp    $0x1a,%r11d
                      │     │││ ││││╭   ││││││ ││      0x00007f830c5dc1c9: jb     0x00007f830c5dc1de  ;*if_icmple
                      │     │││ │││││   ││││││ ││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │     │││ │││││   ││││││ ││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││ │││││   ││││││ ││                                                    ; - com.google.re2j.Machine::match@330 (line 247)
  0.30%    0.33%      │     │││ │││││   ││││││ ││      0x00007f830c5dc1cb: mov    0x24(%rsp),%r10d
  0.29%    0.36%      │     │││ │││││   ││││││ ││      0x00007f830c5dc1d0: add    $0xffffff9f,%r10d
  0.04%    0.08%      │     │││ │││││   ││││││ ││      0x00007f830c5dc1d4: cmp    $0x1a,%r10d
                      │     │││ │││││╭  ││││││ ││      0x00007f830c5dc1d8: jae    0x00007f830c5dc29b  ;*iconst_1
                      │     │││ ││││││  ││││││ ││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │     │││ ││││││  ││││││ ││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││ ││││││  ││││││ ││                                                    ; - com.google.re2j.Machine::match@330 (line 247)
  0.05%    0.08%      │     │││ ││││↘│  ││││││ ││↗     0x00007f830c5dc1de: mov    $0x1,%ebp          ;*ireturn
                      │     │││ ││││ │  ││││││ │││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │     │││ ││││ │  ││││││ │││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││ ││││ │  ││││││ │││                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.25%    0.42%      │     │││ ││││ │  ││││││ │││↗    0x00007f830c5dc1e3: mov    0x34(%rsp),%r11d
  0.27%    0.26%      │     │││ ││││ │  ││││││ ││││    0x00007f830c5dc1e8: add    $0xffffffbf,%r11d
  0.06%    0.10%      │     │││ ││││ │  ││││││ ││││    0x00007f830c5dc1ec: cmp    $0x1a,%r11d
                      │     │││ ││││ │╭ ││││││ ││││    0x00007f830c5dc1f0: jb     0x00007f830c5dc205  ;*if_icmple
                      │     │││ ││││ ││ ││││││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │     │││ ││││ ││ ││││││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││ ││││ ││ ││││││ ││││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.07%    0.06%      │     │││ ││││ ││ ││││││ ││││    0x00007f830c5dc1f2: mov    0x34(%rsp),%r10d
  0.34%    0.31%      │     │││ ││││ ││ ││││││ ││││    0x00007f830c5dc1f7: add    $0xffffff9f,%r10d
  0.28%    0.29%      │     │││ ││││ ││ ││││││ ││││    0x00007f830c5dc1fb: cmp    $0x1a,%r10d
                      │     │││ ││││ ││╭││││││ ││││    0x00007f830c5dc1ff: jae    0x00007f830c5dc2be  ;*iconst_1
                      │     │││ ││││ │││││││││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │     │││ ││││ │││││││││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││ ││││ │││││││││ ││││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.05%    0.10%      │     │││ ││││ │↘│││││││ ││││↗   0x00007f830c5dc205: mov    $0x1,%r11d         ;*ireturn
                      │     │││ ││││ │ │││││││ │││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │     │││ ││││ │ │││││││ │││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││ ││││ │ │││││││ │││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.15%    0.19%      │     │││ ││││ │ │││││││ │││││↗  0x00007f830c5dc20b: cmp    %r11d,%ebp
                      │     │││ ││││ │ │╰│││││ ││││││  0x00007f830c5dc20e: je     0x00007f830c5dbe98  ;*if_icmpeq
                      │     │││ ││││ │ │ │││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                      │     │││ ││││ │ │ │││││ ││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.08%      │     │││ ││││ │ │ │││││ ││││││  0x00007f830c5dc214: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                      │     │││ ││││ │ │ │││││ ││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.03%    0.03%      │     │││ ││││ │ │ ╰││││ ││││││  0x00007f830c5dc218: jmpq   0x00007f830c5dbe9c
  0.01%               │     │││ ↘│││ │ │  ││││ ││││││  0x00007f830c5dc21d: mov    $0x5,%r9d
                      │     │││  │││ │ │  ╰│││ ││││││  0x00007f830c5dc223: jmpq   0x00007f830c5dc19f
  0.00%    0.00%      │     │││  │↘│ │ │   │││ ││││││  0x00007f830c5dc228: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                      │     │││  │ │ │ │   │││ ││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                      │     │││  │ │ │ │   ╰││ ││││││  0x00007f830c5dc22c: jmp    0x00007f830c5dc1b2
  0.01%    0.01%      │     ││↘  │ │ │ │    ││ ││││││  0x00007f830c5dc22e: mov    $0xffffffff,%r8d
  0.01%    0.01%      │     ││   │ │ │ │    ││ ││││││  0x00007f830c5dc234: xor    %ebx,%ebx
                      │     ││   │ │ │ │    ╰│ ││││││  0x00007f830c5dc236: jmpq   0x00007f830c5dc0af
  0.02%    0.02%      │     │↘   │ │ │ │     │ ││││││  0x00007f830c5dc23b: mov    0x28(%rsp),%ebx
           0.01%      │     │    │ │ │ │     │ ││││││  0x00007f830c5dc23f: mov    $0xffffffff,%r8d
                      │     │    │ │ │ │     ╰ ││││││  0x00007f830c5dc245: jmpq   0x00007f830c5dc0af
           0.02%      │     ↘    │ │ │ │       ││││││  0x00007f830c5dc24a: test   %ebp,%ebp
                      │          │ │ │ │       ││││││  0x00007f830c5dc24c: jne    0x00007f830c5dd191  ;*ifeq
                      │          │ │ │ │       ││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                      │          │ │ │ │       ││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │          │ │ │ │       ││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
  0.01%    0.01%      │          │ │ │ │       ││││││  0x00007f830c5dc252: mov    0x50(%rsp),%r10
           0.01%      │          │ │ │ │       ││││││  0x00007f830c5dc257: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f830c5dd529
           0.01%      │          │ │ │ │       ││││││  0x00007f830c5dc25c: test   %r11d,%r11d
                      │          │ │ │ │      ╭││││││  0x00007f830c5dc25f: jne    0x00007f830c5dc27a  ;*ifeq
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                      │          │ │ │ │      │││││││  0x00007f830c5dc261: mov    0x1c(%r10),%ebp    ;*getfield pcs
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                      │          │ │ │ │      │││││││  0x00007f830c5dc265: movb   $0x1,0x18(%r10)    ;*putfield empty
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                      │          │ │ │ │      │││││││  0x00007f830c5dc26a: mov    %r12,0x10(%r10)    ;*putfield pcsl
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                      │          │ │ │ │      │││││││  0x00007f830c5dc26e: mov    %r12d,0xc(%r10)    ;*putfield size
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                      │          │ │ │ │      │││││││  0x00007f830c5dc272: test   %ebp,%ebp
                      │          │ │ │ │      │││││││  0x00007f830c5dc274: jne    0x00007f830c5dd239  ;*if_icmpne
                      │          │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.00%    0.01%      │          │ │ │ │      ↘││││││  0x00007f830c5dc27a: add    $0xc0,%rsp
  0.01%               │          │ │ │ │       ││││││  0x00007f830c5dc281: pop    %rbp
  0.00%               │          │ │ │ │       ││││││  0x00007f830c5dc282: test   %eax,0x15f53d78(%rip)        # 0x00007f8322530000
                      │          │ │ │ │       ││││││                                                ;   {poll_return}
  0.00%               │          │ │ │ │       ││││││  0x00007f830c5dc288: retq   
                      │          ↘ │ │ │       ││││││  0x00007f830c5dc289: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                      │            │ │ │       ││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                      │            │ │ │       ╰│││││  0x00007f830c5dc28d: jmpq   0x00007f830c5dc1a8
           0.01%      │            ↘ │ │        │││││  0x00007f830c5dc292: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                      │              │ │        │││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
           0.01%      │              │ │        ╰││││  0x00007f830c5dc296: jmpq   0x00007f830c5dc1bc
  0.01%    0.01%      │              ↘ │         ││││  0x00007f830c5dc29b: mov    0x24(%rsp),%r11d
  0.03%    0.12%      │                │         ││││  0x00007f830c5dc2a0: add    $0xffffffd0,%r11d
  0.07%    0.06%      │                │         ││││  0x00007f830c5dc2a4: cmp    $0xa,%r11d
                      │                │         ╰│││  0x00007f830c5dc2a8: jb     0x00007f830c5dc1de  ;*if_icmple
                      │                │          │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                      │                │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │                │          │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%    0.01%      │                │          │││  0x00007f830c5dc2ae: cmp    $0x5f,%edx
                      │                │          │││  0x00007f830c5dc2b1: je     0x00007f830c5dd319  ;*if_icmpne
                      │                │          │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                      │                │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │                │          │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.01%      │                │          │││  0x00007f830c5dc2b7: xor    %ebp,%ebp
  0.05%    0.06%      │                │          ╰││  0x00007f830c5dc2b9: jmpq   0x00007f830c5dc1e3
  0.01%    0.02%      │                ↘           ││  0x00007f830c5dc2be: mov    0x34(%rsp),%r11d
  0.08%    0.11%      │                            ││  0x00007f830c5dc2c3: add    $0xffffffd0,%r11d
  0.06%    0.04%      │                            ││  0x00007f830c5dc2c7: cmp    $0xa,%r11d
                      │                            ╰│  0x00007f830c5dc2cb: jb     0x00007f830c5dc205  ;*if_icmple
                      │                             │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                      │                             │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │                             │                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.05%      │                             │  0x00007f830c5dc2d1: mov    0x34(%rsp),%r11d
                      │                             │  0x00007f830c5dc2d6: cmp    $0x5f,%r11d
                      │                             │  0x00007f830c5dc2da: je     0x00007f830c5dd35d  ;*if_icmpne
                      │                             │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                      │                             │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │                             │                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.04%      │                             │  0x00007f830c5dc2e0: xor    %r11d,%r11d
  0.07%    0.04%      │                             ╰  0x00007f830c5dc2e3: jmpq   0x00007f830c5dc20b
                      ↘                                0x00007f830c5dc2e8: mov    0x60(%rsp),%r8
                                                       0x00007f830c5dc2ed: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                                                     ; - com.google.re2j.Machine::step@171 (line 311)
                                                                                                     ; - com.google.re2j.Machine::match@363 (line 248)
                                                       0x00007f830c5dc2f2: test   %r13d,%r13d
                                                       0x00007f830c5dc2f5: jne    0x00007f830c5dd249  ;*ifne
                                                                                                     ; - com.google.re2j.Machine::step@176 (line 312)
                                                                                                     ; - com.google.re2j.Machine::match@363 (line 248)
                                                       0x00007f830c5dc2fb: mov    0x2c(%rsp),%r10d
                                                       0x00007f830c5dc300: movzbl 0x18(%r12,%r10,8),%r8d
....................................................................................................
 57.93%   60.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 549 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f830c5c2d00: mov    0x8(%rsi),%r10d
                     0x00007f830c5c2d04: shl    $0x3,%r10
                     0x00007f830c5c2d08: cmp    %r10,%rax
                     0x00007f830c5c2d0b: jne    0x00007f830c3bde20  ;   {runtime_call}
                     0x00007f830c5c2d11: data16 xchg %ax,%ax
                     0x00007f830c5c2d14: nopl   0x0(%rax,%rax,1)
                     0x00007f830c5c2d1c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.64%    0.23%     0x00007f830c5c2d20: mov    %eax,-0x14000(%rsp)
  0.07%    0.03%     0x00007f830c5c2d27: push   %rbp
  0.24%    0.06%     0x00007f830c5c2d28: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.53%    0.06%     0x00007f830c5c2d2c: vmovq  %r8,%xmm5
  0.01%    0.01%     0x00007f830c5c2d31: vmovq  %rsi,%xmm4
  0.30%    0.03%     0x00007f830c5c2d36: mov    %ecx,%r14d
  0.42%    0.11%     0x00007f830c5c2d39: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.42%    0.47%     0x00007f830c5c2d3c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f830c5c3659
  0.01%              0x00007f830c5c2d40: cmp    $0x40,%ecx
                     0x00007f830c5c2d43: jg     0x00007f830c5c3201  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.29%    0.15%     0x00007f830c5c2d49: mov    $0x1,%esi
  0.36%    0.41%     0x00007f830c5c2d4e: mov    $0x1,%r8d
  0.04%    0.07%     0x00007f830c5c2d54: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.85%    0.76%     0x00007f830c5c2d57: mov    %r11,%r10
  0.07%    0.04%     0x00007f830c5c2d5a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.01%     0x00007f830c5c2d5d: xor    %r13d,%r13d
  0.23%    0.26%     0x00007f830c5c2d60: test   %r10,%r10
                     0x00007f830c5c2d63: jne    0x00007f830c5c3235  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.39%    0.30%     0x00007f830c5c2d69: cmp    $0x40,%ecx
                     0x00007f830c5c2d6c: jge    0x00007f830c5c3275  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.06%    0.05%     0x00007f830c5c2d72: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.02%     0x00007f830c5c2d76: vmovq  %xmm4,%r10
  0.20%    0.23%     0x00007f830c5c2d7b: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.41%    0.48%     0x00007f830c5c2d7f: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.03%    0.04%     0x00007f830c5c2d82: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.01%     0x00007f830c5c2d86: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f830c5c366d
  0.30%    0.22%     0x00007f830c5c2d8b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f830c5c2d92: jne    0x00007f830c5c30e5
  0.53%    0.40%     0x00007f830c5c2d98: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.05%     0x00007f830c5c2d9c: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.05%     0x00007f830c5c2da0: cmp    $0x40,%ecx
                     0x00007f830c5c2da3: jg     0x00007f830c5c32a9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.22%    0.26%     0x00007f830c5c2da9: mov    $0x1,%r10d
  0.42%    0.45%     0x00007f830c5c2daf: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.33%    0.34%     0x00007f830c5c2db2: mov    %r8,%rbx
  0.45%    0.46%     0x00007f830c5c2db5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.05%     0x00007f830c5c2db8: test   %rbx,%rbx
                     0x00007f830c5c2dbb: jne    0x00007f830c5c32e5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007f830c5c2dc1: cmp    $0x40,%ecx
                     0x00007f830c5c2dc4: jge    0x00007f830c5c332d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.28%     0x00007f830c5c2dca: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.39%    0.34%     0x00007f830c5c2dcd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.08%     0x00007f830c5c2dd1: mov    0x88(%rsp),%ecx
  0.02%    0.03%     0x00007f830c5c2dd8: test   %ecx,%ecx
                     0x00007f830c5c2dda: jne    0x00007f830c5c3369  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.27%    0.29%     0x00007f830c5c2de0: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.41%    0.45%     0x00007f830c5c2de3: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.04%     0x00007f830c5c2de6: mov    %edi,%r10d
  0.03%    0.05%     0x00007f830c5c2de9: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.20%    0.34%     0x00007f830c5c2dec: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.43%    0.59%     0x00007f830c5c2df0: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f830c5c3695
  0.04%    0.01%     0x00007f830c5c2df5: cmp    %ebx,%edi
                  ╭  0x00007f830c5c2df7: jae    0x00007f830c5c3068
  0.04%    0.02%  │  0x00007f830c5c2dfd: vmovd  %r10d,%xmm2
  0.24%    0.38%  │  0x00007f830c5c2e02: vmovd  %eax,%xmm0
  0.42%    0.58%  │  0x00007f830c5c2e06: mov    %edi,%eax
  0.03%    0.08%  │  0x00007f830c5c2e08: vmovd  %xmm0,%r10d
  0.03%    0.06%  │  0x00007f830c5c2e0d: mov    0x8(%r12,%r10,8),%r10d
  0.23%    0.33%  │  0x00007f830c5c2e12: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f830c5c2e19: jne    0x00007f830c5c3115  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.40%    0.41%  │  0x00007f830c5c2e1f: vmovq  %xmm4,%r10
  0.05%    0.07%  │  0x00007f830c5c2e24: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.04%    0.04%  │  0x00007f830c5c2e28: mov    %r11,%rcx
  0.24%    0.22%  │  0x00007f830c5c2e2b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.42%    0.31%  │  0x00007f830c5c2e2f: vmovd  %xmm0,%r10d
  0.04%    0.04%  │  0x00007f830c5c2e34: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.02%  │  0x00007f830c5c2e38: lea    0x10(%r11,%rdi,4),%r10
  0.27%    0.22%  │  0x00007f830c5c2e3d: mov    %ecx,(%r10)
  0.76%    0.46%  │  0x00007f830c5c2e40: shr    $0x9,%r10
  0.04%    0.04%  │  0x00007f830c5c2e44: movabs $0x7f8307da6000,%rdi
  0.02%    0.03%  │  0x00007f830c5c2e4e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.32%    0.39%  │  0x00007f830c5c2e52: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f830c5c36b1
  0.45%    0.38%  │  0x00007f830c5c2e57: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f830c5c2e5e: jne    0x00007f830c5c3155
  0.10%    0.05%  │  0x00007f830c5c2e64: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%           │  0x00007f830c5c2e68: vmovq  %r10,%xmm1
  0.27%    0.14%  │  0x00007f830c5c2e6d: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.66%    0.45%  │  0x00007f830c5c2e71: vmovd  %ecx,%xmm3
  0.20%    0.10%  │  0x00007f830c5c2e75: cmp    $0x40,%ecx
                  │  0x00007f830c5c2e78: jg     0x00007f830c5c33a5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.02%  │  0x00007f830c5c2e7e: mov    $0x1,%r10d
  0.26%    0.16%  │  0x00007f830c5c2e84: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.53%    0.48%  │  0x00007f830c5c2e87: mov    %r8,%rcx
  0.22%    0.23%  │  0x00007f830c5c2e8a: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.25%    0.31%  │  0x00007f830c5c2e8d: test   %rcx,%rcx
                  │  0x00007f830c5c2e90: jne    0x00007f830c5c33e1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.23%    0.19%  │  0x00007f830c5c2e96: vmovd  %xmm3,%ecx
  0.03%    0.05%  │  0x00007f830c5c2e9a: cmp    $0x40,%ecx
                  │  0x00007f830c5c2e9d: jge    0x00007f830c5c3425  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.32%    0.36%  │  0x00007f830c5c2ea3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.21%    0.21%  │  0x00007f830c5c2ea6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.08%    0.06%  │  0x00007f830c5c2eaa: mov    %eax,%ecx
  0.01%    0.01%  │  0x00007f830c5c2eac: add    $0x2,%ecx
  0.36%    0.24%  │  0x00007f830c5c2eaf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.34%    0.34%  │  0x00007f830c5c2eb2: mov    %eax,%r10d
  0.10%    0.15%  │  0x00007f830c5c2eb5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.02%  │  0x00007f830c5c2eb9: cmp    %ebx,%r10d
                  │  0x00007f830c5c2ebc: jae    0x00007f830c5c30a5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.33%    0.47%  │  0x00007f830c5c2ec2: vmovd  %r9d,%xmm3
  0.25%    0.46%  │  0x00007f830c5c2ec7: vmovq  %xmm4,%r9
  0.08%    0.10%  │  0x00007f830c5c2ecc: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.04%    0.03%  │  0x00007f830c5c2ed0: vmovq  %xmm1,%r9
  0.36%    0.26%  │  0x00007f830c5c2ed5: mov    %r9,%rcx
  0.30%    0.30%  │  0x00007f830c5c2ed8: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.09%  │  0x00007f830c5c2edc: movslq %eax,%r9
  0.03%    0.05%  │  0x00007f830c5c2edf: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.34%    0.46%  │  0x00007f830c5c2ee3: mov    %r9,%rbx
  0.33%    0.47%  │  0x00007f830c5c2ee6: add    $0x14,%rbx
  0.09%    0.12%  │  0x00007f830c5c2eea: mov    %ecx,(%rbx)
  0.07%    0.05%  │  0x00007f830c5c2eec: mov    %rbx,%rcx
  0.40%    0.25%  │  0x00007f830c5c2eef: shr    $0x9,%rcx
  0.27%    0.16%  │  0x00007f830c5c2ef3: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.09%  │  0x00007f830c5c2ef7: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f830c5c36d5
  0.05%    0.03%  │  0x00007f830c5c2efc: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f830c5c2f02: jne    0x00007f830c5c3181
  0.31%    0.40%  │  0x00007f830c5c2f08: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.34%    0.46%  │  0x00007f830c5c2f0c: vmovq  %rcx,%xmm0
  0.06%    0.10%  │  0x00007f830c5c2f11: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.04%  │  0x00007f830c5c2f14: vmovd  %ecx,%xmm2
  0.38%    0.33%  │  0x00007f830c5c2f18: cmp    $0x40,%ecx
                  │  0x00007f830c5c2f1b: jg     0x00007f830c5c3461  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.34%    0.37%  │  0x00007f830c5c2f21: mov    $0x1,%ebx
  0.07%    0.09%  │  0x00007f830c5c2f26: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.68%    0.81%  │  0x00007f830c5c2f29: mov    %r8,%rcx
  0.10%    0.03%  │  0x00007f830c5c2f2c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.02%  │  0x00007f830c5c2f2f: test   %rcx,%rcx
                  │  0x00007f830c5c2f32: jne    0x00007f830c5c349d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.27%    0.43%  │  0x00007f830c5c2f38: vmovd  %xmm2,%ecx
  0.23%    0.31%  │  0x00007f830c5c2f3c: cmp    $0x40,%ecx
                  │  0x00007f830c5c2f3f: jge    0x00007f830c5c34e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.09%    0.06%  │  0x00007f830c5c2f45: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.02%  │  0x00007f830c5c2f48: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.37%    0.28%  │  0x00007f830c5c2f4c: vmovq  %xmm4,%rcx
  0.31%    0.35%  │  0x00007f830c5c2f51: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.07%    0.06%  │  0x00007f830c5c2f54: mov    %r9,%rbx
  0.03%    0.03%  │  0x00007f830c5c2f57: add    $0x18,%rbx
  0.35%    0.29%  │  0x00007f830c5c2f5b: vmovq  %xmm0,%rcx
  0.32%    0.36%  │  0x00007f830c5c2f60: shr    $0x3,%rcx
  0.07%    0.07%  │  0x00007f830c5c2f64: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.02%  │  0x00007f830c5c2f66: mov    %eax,%ecx
  0.34%    0.31%  │  0x00007f830c5c2f68: add    $0x3,%ecx
  0.29%    0.23%  │  0x00007f830c5c2f6b: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.07%  │  0x00007f830c5c2f6e: shr    $0x9,%rbx
  0.05%    0.01%  │  0x00007f830c5c2f72: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.37%    0.24%  │  0x00007f830c5c2f76: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f830c5c36fd
  0.28%    0.29%  │  0x00007f830c5c2f7b: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f830c5c2f81: jne    0x00007f830c5c31ad
  0.15%    0.08%  │  0x00007f830c5c2f87: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.03%  │  0x00007f830c5c2f8b: vmovq  %rcx,%xmm0
  0.34%    0.35%  │  0x00007f830c5c2f90: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.21%    0.33%  │  0x00007f830c5c2f93: vmovd  %ecx,%xmm1
  0.10%    0.08%  │  0x00007f830c5c2f97: cmp    $0x40,%ecx
                  │  0x00007f830c5c2f9a: jg     0x00007f830c5c3521  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.03%  │  0x00007f830c5c2fa0: mov    $0x1,%ebx
  0.35%    0.33%  │  0x00007f830c5c2fa5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.48%    0.39%  │  0x00007f830c5c2fa8: mov    %r8,%rcx
  0.33%    0.21%  │  0x00007f830c5c2fab: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.27%    0.16%  │  0x00007f830c5c2fae: test   %rcx,%rcx
                  │  0x00007f830c5c2fb1: jne    0x00007f830c5c355d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.10%    0.05%  │  0x00007f830c5c2fb7: vmovd  %xmm1,%ecx
  0.04%    0.02%  │  0x00007f830c5c2fbb: cmp    $0x40,%ecx
                  │  0x00007f830c5c2fbe: jge    0x00007f830c5c35a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.32%    0.37%  │  0x00007f830c5c2fc4: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.23%    0.36%  │  0x00007f830c5c2fc8: vmovq  %xmm4,%r10
  0.07%    0.12%  │  0x00007f830c5c2fcd: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.04%    0.04%  │  0x00007f830c5c2fd1: mov    %r9,%rcx
  0.36%    0.35%  │  0x00007f830c5c2fd4: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.32%    0.28%  │  0x00007f830c5c2fd8: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.08%  │  0x00007f830c5c2fdb: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.03%  │  0x00007f830c5c2fdf: vmovq  %xmm0,%r10
  0.39%    0.36%  │  0x00007f830c5c2fe4: shr    $0x3,%r10
  0.28%    0.34%  │  0x00007f830c5c2fe8: mov    %r10d,(%rcx)
  0.10%    0.15%  │  0x00007f830c5c2feb: mov    %rcx,%r10
  0.05%    0.04%  │  0x00007f830c5c2fee: shr    $0x9,%r10
  0.31%    0.39%  │  0x00007f830c5c2ff2: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.29%    0.27%  │  0x00007f830c5c2ff6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f830c5c3725
  0.14%    0.06%  │  0x00007f830c5c2ffb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f830c5c3002: jne    0x00007f830c5c31d9
  0.03%    0.05%  │  0x00007f830c5c3008: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.34%    0.31%  │  0x00007f830c5c300c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.27%    0.36%  │  0x00007f830c5c3010: cmp    $0x40,%ecx
                  │  0x00007f830c5c3013: jg     0x00007f830c5c35e1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.10%  │  0x00007f830c5c3019: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.66%    0.79%  │  0x00007f830c5c301c: mov    %r8,%rbx
  0.05%    0.07%  │  0x00007f830c5c301f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.02%  │  0x00007f830c5c3022: test   %rbx,%rbx
                  │  0x00007f830c5c3025: jne    0x00007f830c5c3605  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.30%    0.35%  │  0x00007f830c5c302b: cmp    $0x40,%ecx
                  │  0x00007f830c5c302e: jge    0x00007f830c5c3635  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.24%    0.34%  │  0x00007f830c5c3034: or     %rsi,%r8
  0.07%    0.13%  │  0x00007f830c5c3037: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.06%  │  0x00007f830c5c303b: add    $0x20,%r9
  0.30%    0.40%  │  0x00007f830c5c303f: mov    %r10,%r11
  0.34%    0.26%  │  0x00007f830c5c3042: shr    $0x3,%r11
  0.06%    0.11%  │  0x00007f830c5c3046: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.04%  │  0x00007f830c5c3049: mov    %r9,%r10
  0.36%    0.35%  │  0x00007f830c5c304c: add    $0x5,%eax
  0.33%    0.18%  │  0x00007f830c5c304f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.05%  │  0x00007f830c5c3052: shr    $0x9,%r10
  0.04%    0.02%  │  0x00007f830c5c3056: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.34%    0.29%  │  0x00007f830c5c305a: xor    %eax,%eax
  0.35%    0.35%  │  0x00007f830c5c305c: add    $0x70,%rsp
  0.09%    0.16%  │  0x00007f830c5c3060: pop    %rbp
  0.01%    0.06%  │  0x00007f830c5c3061: test   %eax,0x15f6cf99(%rip)        # 0x00007f8322530000
                  │                                                ;   {poll_return}
  0.27%    0.43%  │  0x00007f830c5c3067: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f830c5c3068: mov    $0xffffffe4,%esi
                     0x00007f830c5c306d: vmovq  %xmm4,%rbp
                     0x00007f830c5c3072: mov    %rdx,(%rsp)
                     0x00007f830c5c3076: mov    %r14d,0x88(%rsp)
                     0x00007f830c5c307e: vmovsd %xmm5,0x8(%rsp)
                     0x00007f830c5c3084: mov    %r9d,0x10(%rsp)
....................................................................................................
 37.89%   36.45%  <total for region 2>

....[Hottest Regions]...............................................................................
 57.93%   60.67%         C2, level 4  com.google.re2j.Machine::match, version 578 (1718 bytes) 
 37.89%   36.45%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 549 (839 bytes) 
  0.72%    0.71%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.30%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 590 (155 bytes) 
  0.14%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 590 (8 bytes) 
  0.12%            [kernel.kallsyms]  [unknown] (39 bytes) 
  0.12%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 578 (160 bytes) 
  0.12%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 590 (20 bytes) 
  0.12%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 590 (28 bytes) 
  0.11%    0.06%         C2, level 4  java.util.Collections::shuffle, version 597 (83 bytes) 
  0.10%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 590 (0 bytes) 
  0.09%    0.03%         C2, level 4  java.util.Collections::shuffle, version 597 (233 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.08%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 629 (96 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 590 (139 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 590 (45 bytes) 
  0.05%                       [vdso]  [unknown] (8 bytes) 
  0.04%                       [vdso]  __vdso_clock_gettime (28 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%                  C2, level 4  com.google.re2j.RE2::match, version 590 (0 bytes) 
  1.80%    1.66%  <...other 359 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.06%   60.69%         C2, level 4  com.google.re2j.Machine::match, version 578 
 37.89%   36.45%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 549 
  1.52%    1.29%   [kernel.kallsyms]  [unknown] 
  1.10%    0.41%         C2, level 4  com.google.re2j.RE2::match, version 590 
  0.24%    0.11%         C2, level 4  java.util.Collections::shuffle, version 597 
  0.23%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 629 
  0.07%    0.07%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%                       [vdso]  __vdso_clock_gettime 
  0.05%                       [vdso]  [unknown] 
  0.05%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.04%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 596 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%        libc-2.26.so  __clock_gettime 
  0.02%    0.02%           libjvm.so  fileStream::write 
  0.02%    0.02%           libjvm.so  ObjArrayKlass::oop_push_contents 
  0.42%    0.30%  <...other 61 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 97.54%   97.72%         C2, level 4
  1.52%    1.29%   [kernel.kallsyms]
  0.48%    0.63%           libjvm.so
  0.22%    0.23%        libc-2.26.so
  0.12%                       [vdso]
  0.04%    0.04%      hsdis-amd64.so
  0.04%    0.06%  libpthread-2.26.so
  0.02%    0.02%         interpreter
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  26772.910 ± 512.177  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
