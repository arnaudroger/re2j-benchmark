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
# Warmup Iteration   1: 836.752 ops/s
# Warmup Iteration   2: 1845.619 ops/s
# Warmup Iteration   3: 1874.842 ops/s
# Warmup Iteration   4: 1870.749 ops/s
# Warmup Iteration   5: 1871.125 ops/s
# Warmup Iteration   6: 1854.009 ops/s
# Warmup Iteration   7: 1892.896 ops/s
# Warmup Iteration   8: 1904.013 ops/s
# Warmup Iteration   9: 1906.570 ops/s
# Warmup Iteration  10: 1907.476 ops/s
# Warmup Iteration  11: 1907.240 ops/s
# Warmup Iteration  12: 1907.474 ops/s
# Warmup Iteration  13: 1907.822 ops/s
# Warmup Iteration  14: 1901.069 ops/s
# Warmup Iteration  15: 1893.384 ops/s
# Warmup Iteration  16: 1898.231 ops/s
# Warmup Iteration  17: 1903.199 ops/s
# Warmup Iteration  18: 1903.574 ops/s
# Warmup Iteration  19: 1903.731 ops/s
# Warmup Iteration  20: 1904.366 ops/s
Iteration   1: 1896.505 ops/s
Iteration   2: 1890.314 ops/s
Iteration   3: 1891.307 ops/s
Iteration   4: 1891.491 ops/s
Iteration   5: 1842.389 ops/s
Iteration   6: 1890.911 ops/s
Iteration   7: 1891.127 ops/s
Iteration   8: 1888.426 ops/s
Iteration   9: 1900.357 ops/s
Iteration  10: 1900.602 ops/s
Iteration  11: 1827.363 ops/s
Iteration  12: 1900.485 ops/s
Iteration  13: 1899.920 ops/s
Iteration  14: 1901.525 ops/s
Iteration  15: 1894.686 ops/s
Iteration  16: 1886.708 ops/s
Iteration  17: 1904.326 ops/s
Iteration  18: 1904.721 ops/s
Iteration  19: 1904.562 ops/s
Iteration  20: 1904.832 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  1890.628 ±(99.9%) 17.459 ops/s [Average]
  (min, avg, max) = (1827.363, 1890.628, 1904.832), stdev = 20.106
  CI (99.9%): [1873.168, 1908.087] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 199289 total address lines.
Perf output processed (skipped 23.448 seconds):
 Column 1: cycles (20704 events)
 Column 2: instructions (20694 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 500 (320 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f26e5216600: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f26e5216604: shl    $0x3,%r10
                       0x00007f26e5216608: cmp    %r10,%rax
                       0x00007f26e521660b: jne    0x00007f26e5045e20  ;   {runtime_call}
                       0x00007f26e5216611: data16 xchg %ax,%ax
                       0x00007f26e5216614: nopl   0x0(%rax,%rax,1)
                       0x00007f26e521661c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.85%    0.83%       0x00007f26e5216620: mov    %eax,-0x14000(%rsp)
  0.27%    0.24%       0x00007f26e5216627: push   %rbp
  0.36%    0.45%       0x00007f26e5216628: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 344)
  0.58%    0.46%       0x00007f26e521662c: mov    %edi,0x28(%rsp)
  0.11%    0.07%       0x00007f26e5216630: mov    %r9,0x20(%rsp)
  0.23%    0.37%       0x00007f26e5216635: mov    %r8d,0x1c(%rsp)
  0.47%    0.38%       0x00007f26e521663a: mov    %rsi,0x8(%rsp)
  0.17%    0.20%       0x00007f26e521663f: mov    %ecx,0x40(%rsp)
  0.08%    0.06%       0x00007f26e5216643: test   %ecx,%ecx
                       0x00007f26e5216645: je     0x00007f26e5216b01  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 344)
  0.29%    0.42%       0x00007f26e521664b: mov    %rdx,0x48(%rsp)
  0.46%    0.48%       0x00007f26e5216650: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
                                                                     ; implicit exception: dispatches to 0x00007f26e5216c29
  0.11%    0.26%       0x00007f26e5216654: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f26e5216c3d
  0.09%    0.08%       0x00007f26e5216659: cmp    %r10d,%ecx
                       0x00007f26e521665c: jae    0x00007f26e52169fa  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.28%    0.25%       0x00007f26e5216662: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.53%    0.58%       0x00007f26e5216665: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.15%    0.20%       0x00007f26e5216669: lea    (%r12,%r9,8),%rdi
  0.07%    0.04%       0x00007f26e521666d: mov    0x40(%rsp),%r11d
  0.42%    0.26%       0x00007f26e5216672: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@9 (line 347)
  0.74%    0.59%       0x00007f26e5216677: cmp    %r8d,%ebp
                  ╭    0x00007f26e521667a: jl     0x00007f26e5216740  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 350)
  1.05%    0.91%  │ ↗  0x00007f26e5216680: mov    %r8d,%r11d
  0.02%    0.00%  │ │  0x00007f26e5216683: inc    %r11d
  0.22%    0.20%  │ │  0x00007f26e5216686: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.18%    0.09%  │ │  0x00007f26e521668a: mov    0x40(%rsp),%ebx
  0.65%    0.57%  │ │  0x00007f26e521668e: cmp    %r10d,%ebx
                  │ │  0x00007f26e5216691: jae    0x00007f26e5216a39
  0.01%    0.01%  │ │  0x00007f26e5216697: mov    %r8d,0x10(%rdi,%rbx,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.67%    0.54%  │ │  0x00007f26e521669c: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f26e5216c51
  0.24%    0.15%  │ │  0x00007f26e52166a1: cmp    %r10d,%r8d
                  │ │  0x00007f26e52166a4: jae    0x00007f26e5216a85  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.55%    0.56%  │ │  0x00007f26e52166aa: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.03%    0.01%  │ │  0x00007f26e52166ae: mov    %r10,0x38(%rsp)
  0.35%    0.23%  │ │  0x00007f26e52166b3: lea    0x10(%r10,%r8,4),%rbp
  0.12%    0.11%  │ │  0x00007f26e52166b8: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.56%    0.60%  │ │  0x00007f26e52166bc: test   %r11d,%r11d
                  │╭│  0x00007f26e52166bf: je     0x00007f26e5216773  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.02%    0.01%  │││  0x00007f26e52166c5: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.30%    0.36%  │││  0x00007f26e52166c9: mov    0x40(%rsp),%r11d
  0.19%    0.18%  │││  0x00007f26e52166ce: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.86%    0.59%  │││  0x00007f26e52166d2: mov    0x8(%rsp),%r10
  0.01%    0.01%  │││  0x00007f26e52166d7: mov    0x18(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 351)
  0.54%    0.38%  │││  0x00007f26e52166db: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 350)
  0.30%    0.41%  │││  0x00007f26e52166df: mov    0x18(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 351)
                  │││                                                ; implicit exception: dispatches to 0x00007f26e5216c65
  0.93%    0.71%  │││  0x00007f26e52166e4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f26e5216c79
  0.69%    0.92%  │││  0x00007f26e52166e9: mov    0x40(%rsp),%r10d
  0.25%    0.21%  │││  0x00007f26e52166ee: cmp    %r11d,%r10d
                  │││  0x00007f26e52166f1: jae    0x00007f26e5216ac9
  0.53%    0.58%  │││  0x00007f26e52166f7: lea    (%r12,%rbp,8),%r10
  0.38%    0.40%  │││  0x00007f26e52166fb: mov    0x40(%rsp),%r8d
  0.01%    0.00%  │││  0x00007f26e5216700: mov    0x10(%r10,%r8,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 30)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 351)
  0.38%    0.32%  │││  0x00007f26e5216705: mov    %r11d,0x30(%rsp)
  0.45%    0.39%  │││  0x00007f26e521670a: mov    0xc(%r12,%r11,8),%r11d  ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 352)
                  │││                                                ; implicit exception: dispatches to 0x00007f26e5216c8d
  1.60%    1.15%  │││  0x00007f26e521670f: mov    %r11d,%r8d
                  │││  0x00007f26e5216712: dec    %r8d
  0.74%    0.69%  │││  0x00007f26e5216715: cmp    $0xb,%r8d
                  │││  0x00007f26e5216719: jae    0x00007f26e5216af1  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.67%    0.60%  │││  0x00007f26e521671f: mov    0x30(%rsp),%r8d
  0.18%    0.15%  │││  0x00007f26e5216724: mov    0x10(%r12,%r8,8),%ecx  ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 372)
  2.19%    1.90%  │││  0x00007f26e5216729: mov    0x14(%r12,%r8,8),%r10d  ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 366)
  0.25%    0.23%  │││  0x00007f26e521672e: movslq %r11d,%r11
  0.05%    0.02%  │││  0x00007f26e5216731: movabs $0x7f26e52165a0,%r8  ;   {section_word}
  0.11%    0.03%  │││  0x00007f26e521673b: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 352)
  0.03%    0.05%  ↘││  0x00007f26e5216740: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f26e5216cf9
  0.01%    0.03%   ││  0x00007f26e5216745: cmp    %r11d,%ebp
                   ││  0x00007f26e5216748: jae    0x00007f26e5216c01
  0.03%    0.08%   ││  0x00007f26e521674e: lea    (%r12,%rcx,8),%r11
                   ││  0x00007f26e5216752: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 347)
  0.15%    0.14%   ││  0x00007f26e5216757: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f26e5216d09
  0.42%    0.42%   ││  0x00007f26e521675c: mov    0x40(%rsp),%ebx
  0.01%    0.02%   ││  0x00007f26e5216760: cmp    %ebx,%r11d
                   │╰  0x00007f26e5216763: jne    0x00007f26e5216680
                   │   0x00007f26e5216769: mov    0x70(%rsp),%rax
                   │   0x00007f26e521676e: jmpq   0x00007f26e52169c7
                   ↘   0x00007f26e5216773: mov    0x60(%r15),%rbx
                       0x00007f26e5216777: mov    %rbx,%r10
                       0x00007f26e521677a: add    $0x18,%r10
                       0x00007f26e521677e: cmp    0x70(%r15),%r10
                       0x00007f26e5216782: jae    0x00007f26e5216ba5
                       0x00007f26e5216788: mov    %r10,0x60(%r15)
                       0x00007f26e521678c: prefetchnta 0xc0(%r10)
....................................................................................................
 23.17%   21.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 507 (394 bytes) 

                           0x00007f26e521f2f6: jae    0x00007f26e521f639
                           0x00007f26e521f2fc: lea    (%r12,%rbp,8),%rdi
                           0x00007f26e521f300: mov    0x10(%rdi,%rcx,4),%edi  ;*aaload
                                                                         ; - com.google.re2j.Machine::step@251 (line 299)
                           0x00007f26e521f304: mov    0x10(%r12,%rdi,8),%edi  ;*getfield thread
                                                                         ; - com.google.re2j.Machine::step@256 (line 300)
                                                                         ; implicit exception: dispatches to 0x00007f26e521fda1
                           0x00007f26e521f309: test   %edi,%edi
                           0x00007f26e521f30b: jne    0x00007f26e521f280  ;*ifnull
                                                                         ; - com.google.re2j.Machine::step@259 (line 300)
           0.00%           0x00007f26e521f311: jmp    0x00007f26e521f2cf
                           0x00007f26e521f313: nopw   0x0(%rax,%rax,1)
                           0x00007f26e521f31c: data16 data16 xchg %ax,%ax
  0.65%    0.91%   ↗       0x00007f26e521f320: mov    %r8d,0x30(%rsp)
  0.75%    0.89%   │       0x00007f26e521f325: mov    %r10d,%edx
  0.29%    0.44%   │       0x00007f26e521f328: mov    %r10d,%r11d
  0.25%    0.37%   │       0x00007f26e521f32b: sub    %r8d,%r11d         ;*isub
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@294 (line 310)
  0.62%    0.86%   │       0x00007f26e521f32e: mov    %r11d,%r8d
  0.63%    0.76%   │       0x00007f26e521f331: sar    $0x1f,%r8d
  0.39%    0.39%   │       0x00007f26e521f335: shr    $0x1f,%r8d
  0.28%    0.30%   │       0x00007f26e521f339: add    %r11d,%r8d
  0.48%    0.78%   │       0x00007f26e521f33c: sar    %r8d
  0.61%    1.05%   │       0x00007f26e521f33f: mov    0x30(%rsp),%r10d
  0.34%    0.35%   │       0x00007f26e521f344: add    %r8d,%r10d         ;*idiv
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@294 (line 310)
  0.49%    0.69%   │   ↗   0x00007f26e521f347: cmp    $0x3f,%r10d
                   │   │   0x00007f26e521f34b: jae    0x00007f26e521f4e9
  0.87%    1.01%   │   │   0x00007f26e521f351: movslq 0x30(%rsp),%r11
  0.85%    1.14%   │   │   0x00007f26e521f356: movslq %r8d,%r8
  0.37%    0.50%   │   │   0x00007f26e521f359: add    %r8,%r11
  0.59%    0.59%   │   │   0x00007f26e521f35c: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                   │   │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.81%    0.93%   │   │   0x00007f26e521f361: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f26e521fcf5
  1.42%    1.76%   │   │   0x00007f26e521f366: test   %r11d,%r11d
                   │   │   0x00007f26e521f369: jbe    0x00007f26e521f535  ;*iaload
                   │   │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  1.10%    1.19%   │   │   0x00007f26e521f36f: mov    0x10(%r12,%rbp,8),%r11d
  0.40%    0.45%   │   │   0x00007f26e521f374: cmp    0x20(%rsp),%r11d
                  ╭│   │   0x00007f26e521f379: jl     0x00007f26e521f448  ;*if_icmpge
                  ││   │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  ││   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.93%    1.39%  ││   │   0x00007f26e521f37f: mov    0x30(%rsp),%r8d    ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop r13=Oop r14=NarrowOop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1412}
                  ││   │                                                 ;*goto
                  ││   │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.65%    0.96%  ││   │↗  0x00007f26e521f384: test   %eax,0x177a0c76(%rip)        # 0x00007f26fc9c0000
                  ││   ││                                                ;*goto
                  ││   ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  ││   ││                                                ;   {poll}
  0.36%    0.45%  ││   ││  0x00007f26e521f38a: cmp    %r10d,%r8d
                  │╰   ││  0x00007f26e521f38d: jl     0x00007f26e521f320  ;*if_icmpge
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.03%    0.01%  │    ││  0x00007f26e521f38f: cmp    $0x3f,%r8d
                  │    ││  0x00007f26e521f393: jge    0x00007f26e521f8f1  ;*if_icmpge
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.24%    0.29%  │    ││  0x00007f26e521f399: cmp    $0x3f,%r8d
                  │    ││  0x00007f26e521f39d: jae    0x00007f26e521f751
  0.13%    0.15%  │    ││  0x00007f26e521f3a3: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%  │    ││  0x00007f26e521f3a8: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f26e521fde1
  0.02%    0.01%  │    ││  0x00007f26e521f3ad: test   %r11d,%r11d
                  │    ││  0x00007f26e521f3b0: jbe    0x00007f26e521f799
  0.24%    0.24%  │    ││  0x00007f26e521f3b6: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.12%    0.20%  │    ││  0x00007f26e521f3bb: cmp    0x20(%rsp),%ebp
                  │    ││  0x00007f26e521f3bf: je     0x00007f26e521f939  ;*if_icmpne
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%           │    ││  0x00007f26e521f3c5: mov    0x20(%rsp),%r8d
  0.01%    0.02%  │    ││  0x00007f26e521f3ca: cmp    $0x7f,%r8d
                  │    ││  0x00007f26e521f3ce: jg     0x00007f26e521f971  ;*if_icmpgt
                  │    ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.24%    0.31%  │    ││  0x00007f26e521f3d4: cmp    $0x41,%r8d
                  │    ││  0x00007f26e521f3d8: jl     0x00007f26e521f8a5  ;*if_icmpgt
                  │    ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.08%    0.16%  │    ││  0x00007f26e521f3de: cmp    $0x5a,%r8d
                  │ ╭  ││  0x00007f26e521f3e2: jg     0x00007f26e521f3f0  ;*if_icmpgt
                  │ │  ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │  ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │ │  ││  0x00007f26e521f3e4: mov    %r8d,%r10d
                  │ │  ││  0x00007f26e521f3e7: add    $0x20,%r10d        ;*iinc
                  │ │  ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │  ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │  ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │ │  ││  0x00007f26e521f3eb: cmp    %r8d,%r10d
                  │ │╭ ││  0x00007f26e521f3ee: jne    0x00007f26e521f40b  ;*if_icmpeq
                  │ ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ ││ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.00%  │ ↘│ ││  0x00007f26e521f3f0: cmp    $0x61,%r8d
                  │  │ ││  0x00007f26e521f3f4: jl     0x00007f26e521fbc1  ;*if_icmpgt
                  │  │ ││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │ ││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.01%  │  │ ││  0x00007f26e521f3fa: cmp    $0x7a,%r8d
                  │  │ ││  0x00007f26e521f3fe: jg     0x00007f26e521fc09  ;*if_icmpgt
                  │  │ ││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │ ││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.19%    0.32%  │  │ ││  0x00007f26e521f404: mov    %r8d,%r10d
  0.12%    0.09%  │  │ ││  0x00007f26e521f407: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop r13=Oop r14=NarrowOop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1547}
                  │  │ ││                                                ;*goto
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │  ↘ ││  0x00007f26e521f40b: test   %eax,0x177a0bef(%rip)        # 0x00007f26fc9c0000
                  │    ││                                                ;*goto
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │    ││                                                ;   {poll}
  0.01%    0.01%  │    ││  0x00007f26e521f411: cmp    %eax,%r10d
                  │    ││  0x00007f26e521f414: je     0x00007f26e521f25d  ;*if_icmpeq
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 56)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
                  │    ││  0x00007f26e521f41a: mov    %eax,%r11d         ;*iload_1
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 58)
                  │    ││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.03%    0.01%  │    ││  0x00007f26e521f41d: cmp    %r10d,%ecx
                  │   ╭││  0x00007f26e521f420: je     0x00007f26e521f47e  ;*if_icmpne
                  │   │││                                                ; - com.google.re2j.Inst::matchRune@44 (line 58)
                  │   │││                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.20%    0.23%  │   │││  0x00007f26e521f422: mov    %r10d,0x20(%rsp)
  0.13%    0.12%  │   │││  0x00007f26e521f427: mov    %r11d,%eax
  0.04%    0.08%  │   │││  0x00007f26e521f42a: mov    $0x1f,%r8d
  0.04%    0.04%  │   │││  0x00007f26e521f430: mov    $0x1f,%r10d
  0.24%    0.26%  │   │││  0x00007f26e521f436: xor    %r11d,%r11d
  0.12%    0.19%  │   │││  0x00007f26e521f439: mov    $0x3f,%edx
  0.03%    0.06%  │   │││  0x00007f26e521f43e: mov    %r11d,0x30(%rsp)
  0.01%    0.02%  │   │╰│  0x00007f26e521f443: jmpq   0x00007f26e521f347
  0.34%    0.48%  ↘   │ │  0x00007f26e521f448: mov    %r10d,%r8d
  0.01%    0.03%      │ │  0x00007f26e521f44b: inc    %r8d               ;*iadd
                      │ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                      │ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │ │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.02%    0.02%      │ │  0x00007f26e521f44e: mov    %edx,%r10d
  0.04%    0.05%      │ ╰  0x00007f26e521f451: jmpq   0x00007f26e521f384
  0.05%    0.09%      │    0x00007f26e521f456: xor    %r11d,%r11d
                      │    0x00007f26e521f459: mov    0x20(%rsp),%ecx
                      │    0x00007f26e521f45d: mov    0x7c(%rsp),%eax
  0.07%    0.14%      │    0x00007f26e521f461: jmpq   0x00007f26e521eef3
                      │    0x00007f26e521f466: mov    0x80(%rsp),%edi
                      │    0x00007f26e521f46d: test   %edi,%edi
                      │    0x00007f26e521f46f: jne    0x00007f26e521f097  ;*ifne
                      │                                                  ; - com.google.re2j.Machine::step@160 (line 287)
                      │    0x00007f26e521f475: mov    0x20(%rsp),%ecx
                      │    0x00007f26e521f479: jmpq   0x00007f26e521ee8b
  0.02%    0.04%      ↘    0x00007f26e521f47e: mov    %ecx,0x20(%rsp)
  0.03%    0.04%           0x00007f26e521f482: mov    %edi,%r9d
                           0x00007f26e521f485: jmpq   0x00007f26e521efaa
                           0x00007f26e521f48a: mov    %r10d,0x74(%rsp)
  0.01%    0.00%           0x00007f26e521f48f: mov    %eax,0x7c(%rsp)
                           0x00007f26e521f493: mov    %r11,%r13
                           0x00007f26e521f496: jmpq   0x00007f26e521efaa
           0.00%           0x00007f26e521f49b: mov    %r10d,0x74(%rsp)
                           0x00007f26e521f4a0: mov    %eax,0x7c(%rsp)
                           0x00007f26e521f4a4: mov    %r11,%r13
                           0x00007f26e521f4a7: jmpq   0x00007f26e521efaa
                           0x00007f26e521f4ac: mov    $0xffffffe4,%esi
                           0x00007f26e521f4b1: mov    0x8(%rsp),%rbp
                           0x00007f26e521f4b6: mov    %r8d,0x7c(%rsp)
                           0x00007f26e521f4bb: mov    %r10d,0x8(%rsp)
                           0x00007f26e521f4c0: mov    0x10(%rsp),%r10d
                           0x00007f26e521f4c5: mov    %r10d,0xc(%rsp)
                           0x00007f26e521f4ca: mov    0x14(%rsp),%r11d
....................................................................................................
 17.03%   21.96%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 507 (209 bytes) 

                                                                    ; - com.google.re2j.Machine::step@279 (line 304)
                      0x00007f26e521f143: mov    0x28(%rsp),%r8
                      0x00007f26e521f148: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                    ; - com.google.re2j.Machine::step@284 (line 306)
                      0x00007f26e521f14d: mov    0x20(%rsp),%ecx
                      0x00007f26e521f151: jmpq   0x00007f26e521ee8b  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@18 (line 270)
                      0x00007f26e521f156: mov    0x8(%rsp),%r10
                      0x00007f26e521f15b: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                    ; - com.google.re2j.Machine::step@15 (line 270)
  0.03%    0.03%      0x00007f26e521f15f: add    $0x60,%rsp
  0.08%    0.10%      0x00007f26e521f163: pop    %rbp
                      0x00007f26e521f164: test   %eax,0x177a0e96(%rip)        # 0x00007f26fc9c0000
                                                                    ;   {poll_return}
  0.00%               0x00007f26e521f16a: retq   
                      0x00007f26e521f16b: nopl   0x0(%rax,%rax,1)
  0.38%    0.42%  ↗   0x00007f26e521f170: mov    %r8d,%r10d
  0.58%    0.65%  │   0x00007f26e521f173: mov    %r8d,%eax
  0.76%    0.53%  │   0x00007f26e521f176: mov    %r11d,0x20(%rsp)
  0.49%    0.29%  │   0x00007f26e521f17b: sub    %r11d,%r10d        ;*isub
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.39%    0.39%  │   0x00007f26e521f17e: mov    %r10d,%esi
  0.38%    0.49%  │   0x00007f26e521f181: sar    $0x1f,%esi
  0.75%    0.36%  │   0x00007f26e521f184: shr    $0x1f,%esi
  0.53%    0.12%  │   0x00007f26e521f187: add    %r10d,%esi
  0.43%    0.44%  │   0x00007f26e521f18a: sar    %esi
  0.55%    0.53%  │   0x00007f26e521f18c: mov    %r11d,%r8d
  0.88%    0.44%  │   0x00007f26e521f18f: add    %esi,%r8d          ;*idiv
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.42%    0.29%  │   0x00007f26e521f192: cmp    $0x3f,%r8d
                  │   0x00007f26e521f196: jae    0x00007f26e521f5b1
  0.40%    0.52%  │   0x00007f26e521f19c: movslq 0x20(%rsp),%r10
  1.11%    0.79%  │   0x00007f26e521f1a1: movslq %esi,%r11
  0.79%    0.77%  │   0x00007f26e521f1a4: add    %r11,%r10
  0.52%    0.61%  │   0x00007f26e521f1a7: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.55%    0.41%  │   0x00007f26e521f1ac: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f26e521fd25
  1.15%    0.78%  │   0x00007f26e521f1b1: test   %r10d,%r10d
                  │   0x00007f26e521f1b4: jbe    0x00007f26e521f5fd  ;*iaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.85%    0.74%  │   0x00007f26e521f1ba: mov    0x10(%r12,%rbp,8),%r10d
  0.47%    0.73%  │   0x00007f26e521f1bf: cmp    %edx,%r10d
                  │   0x00007f26e521f1c2: jl     0x00007f26e521f26e  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.55%    0.78%  │   0x00007f26e521f1c8: mov    0x20(%rsp),%r11d   ; OopMap{r9=Oop rbx=NarrowOop rdi=NarrowOop r13=Oop r14=NarrowOop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=973}
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
  0.76%    0.53%  │   0x00007f26e521f1cd: test   %eax,0x177a0e2d(%rip)        # 0x00007f26fc9c0000
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@294 (line 310)
                  │                                                 ;   {poll}
  0.64%    0.86%  │   0x00007f26e521f1d3: cmp    %r8d,%r11d
                  ╰   0x00007f26e521f1d6: jl     0x00007f26e521f170  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.15%    0.20%      0x00007f26e521f1d8: cmp    $0x3f,%r11d
                      0x00007f26e521f1dc: jge    0x00007f26e521fae9  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.03%    0.04%      0x00007f26e521f1e2: cmp    $0x3f,%r11d
                      0x00007f26e521f1e6: jae    0x00007f26e521f7d1
  0.03%    0.03%      0x00007f26e521f1ec: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.19%    0.32%      0x00007f26e521f1f1: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f26e521fe01
  0.18%    0.15%      0x00007f26e521f1f6: test   %r10d,%r10d
                      0x00007f26e521f1f9: jbe    0x00007f26e521f861
  0.05%    0.07%      0x00007f26e521f1ff: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.03%    0.05%      0x00007f26e521f204: cmp    %edx,%ebp
                      0x00007f26e521f206: je     0x00007f26e521fb31  ;*if_icmpne
                                                                    ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.18%    0.26%      0x00007f26e521f20c: mov    %edx,%r11d
  0.12%    0.14%      0x00007f26e521f20f: cmp    $0x7f,%r11d
                      0x00007f26e521f213: jg     0x00007f26e521fb79  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.04%    0.07%      0x00007f26e521f219: cmp    $0x41,%r11d
                      0x00007f26e521f21d: jl     0x00007f26e521f9f1  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@294 (line 310)
  0.01%    0.02%      0x00007f26e521f223: cmp    $0x5a,%r11d
                   ╭  0x00007f26e521f227: jg     0x00007f26e521f239  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.21%    0.24%   │  0x00007f26e521f229: mov    %r11d,%r10d
  0.12%    0.13%   │  0x00007f26e521f22c: add    $0x20,%r10d        ;*iinc
                   │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
  0.05%    0.06%   │  0x00007f26e521f230: cmp    %r11d,%r10d
                   │  0x00007f26e521f233: jne    0x00007f26e521f41d  ;*if_icmpeq
                   │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@294 (line 310)
                   ↘  0x00007f26e521f239: cmp    $0x61,%r11d
                      0x00007f26e521f23d: jl     0x00007f26e521fc51  ;*if_icmpgt
....................................................................................................
 15.85%   14.38%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 507 (336 bytes) 

                         # parm6:    [sp+0x78]   = int
                         # parm7:    [sp+0x80]   = boolean
                         0x00007f26e521ee00: mov    0x8(%rsi),%r10d
                         0x00007f26e521ee04: shl    $0x3,%r10
                         0x00007f26e521ee08: cmp    %r10,%rax
                         0x00007f26e521ee0b: jne    0x00007f26e5045e20  ;   {runtime_call}
                         0x00007f26e521ee11: data16 xchg %ax,%ax
                         0x00007f26e521ee14: nopl   0x0(%rax,%rax,1)
                         0x00007f26e521ee1c: data16 data16 xchg %ax,%ax
                       [Verified Entry Point]
  0.08%    0.05%         0x00007f26e521ee20: mov    %eax,-0x14000(%rsp)
  0.12%    0.06%         0x00007f26e521ee27: push   %rbp
  0.07%    0.05%         0x00007f26e521ee28: sub    $0x60,%rsp         ;*synchronization entry
                                                                       ; - com.google.re2j.Machine::step@-1 (line 269)
  0.04%    0.05%         0x00007f26e521ee2c: mov    %edi,0x20(%rsp)
  0.03%                  0x00007f26e521ee30: mov    %r9d,0x14(%rsp)
  0.08%    0.06%         0x00007f26e521ee35: mov    %rcx,0x18(%rsp)
  0.05%    0.01%         0x00007f26e521ee3a: mov    %r8d,0x10(%rsp)
  0.12%    0.06%         0x00007f26e521ee3f: mov    %rdx,0x8(%rsp)
  0.04%    0.02%         0x00007f26e521ee44: mov    %rsi,0x28(%rsp)
  0.08%    0.04%         0x00007f26e521ee49: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                       ; - com.google.re2j.Machine::step@1 (line 269)
  0.01%    0.04%         0x00007f26e521ee4d: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                       ; - com.google.re2j.Machine::step@4 (line 269)
                                                                       ; implicit exception: dispatches to 0x00007f26e521fdc1
  0.05%    0.07%         0x00007f26e521ee53: mov    %r11d,0x24(%rsp)
  0.05%    0.01%         0x00007f26e521ee58: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f26e521fdd1
  0.04%    0.02%         0x00007f26e521ee5c: test   %r11d,%r11d
                         0x00007f26e521ee5f: jle    0x00007f26e521f156  ;*if_icmpge
                                                                       ; - com.google.re2j.Machine::step@18 (line 270)
                         0x00007f26e521ee65: xor    %r10d,%r10d
  0.03%    0.06%  ╭      0x00007f26e521ee68: jmpq   0x00007f26e521ef12
  0.04%    0.04%  │  ↗   0x00007f26e521ee6d: mov    0xc(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007f26e521fdb1
  0.22%    0.28%  │  │   0x00007f26e521ee72: test   %ebx,%ebx
                  │  │   0x00007f26e521ee74: jbe    0x00007f26e521f679  ;*iaload
                  │  │                                                 ; - com.google.re2j.Machine::step@310 (line 314)
  0.11%    0.10%  │  │   0x00007f26e521ee7a: mov    0x10(%r12,%rdi,8),%ebx
  0.00%           │  │   0x00007f26e521ee7f: mov    0x20(%rsp),%ecx
  0.00%           │  │   0x00007f26e521ee83: cmp    %ebx,%ecx
                  │  │   0x00007f26e521ee85: je     0x00007f26e521f48a  ;*goto
                  │  │                                                 ; - com.google.re2j.Machine::step@299 (line 311)
  0.36%    0.35%  │  │↗  0x00007f26e521ee8b: mov    %r11,%r9           ;*aload
                  │  ││                                                ; - com.google.re2j.Machine::step@385 (line 331)
  0.10%    0.14%  │  ││  0x00007f26e521ee8e: mov    0x28(%rsp),%r11
  0.02%    0.00%  │  ││  0x00007f26e521ee93: mov    0x24(%r11),%r8d    ;*getfield pool
                  │  ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
  0.03%    0.03%  │  ││  0x00007f26e521ee97: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength
                  │  ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
                  │  ││                                                ; implicit exception: dispatches to 0x00007f26e521fd15
  0.31%    0.31%  │  ││  0x00007f26e521ee9c: mov    0x28(%rsp),%rbx
  0.13%    0.14%  │  ││  0x00007f26e521eea1: mov    0xc(%rbx),%ebp     ;*getfield poolSize
                  │  ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
  0.00%    0.00%  │  ││  0x00007f26e521eea4: cmp    %r11d,%ebp
                  │  ││  0x00007f26e521eea7: jge    0x00007f26e521f709  ;*if_icmplt
                  │  ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
  0.02%    0.03%  │  ││  0x00007f26e521eead: mov    %ebp,%edi
  0.33%    0.32%  │  ││  0x00007f26e521eeaf: inc    %edi
  0.12%    0.15%  │  ││  0x00007f26e521eeb1: mov    %edi,0xc(%rbx)     ;*putfield poolSize
                  │  ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
           0.01%  │  ││  0x00007f26e521eeb4: cmp    %r11d,%ebp
                  │  ││  0x00007f26e521eeb7: jae    0x00007f26e521f571  ;*aastore
                  │  ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
  0.02%    0.03%  │  ││  0x00007f26e521eebd: mov    %r9,%r10
  0.30%    0.22%  │  ││  0x00007f26e521eec0: shr    $0x3,%r10
  0.14%    0.14%  │  ││  0x00007f26e521eec4: lea    (%r12,%r8,8),%r11  ;*getfield pool
                  │  ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
  0.00%    0.02%  │  ││  0x00007f26e521eec8: lea    0x10(%r11,%rbp,4),%r11
  0.02%    0.03%  │  ││  0x00007f26e521eecd: mov    %r10d,(%r11)
  0.39%    0.35%  │  ││  0x00007f26e521eed0: mov    %r11,%r10
  0.14%    0.22%  │  ││  0x00007f26e521eed3: shr    $0x9,%r10
  0.02%    0.01%  │  ││  0x00007f26e521eed7: movabs $0x7f26f53c8000,%r11
  0.02%    0.01%  │  ││  0x00007f26e521eee1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │  ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │  ││                                                ; - com.google.re2j.Machine::step@393 (line 332)
  0.38%    0.35%  │  ││  0x00007f26e521eee5: xor    %r11d,%r11d
  0.14%    0.20%  │╭ ││  0x00007f26e521eee8: jmp    0x00007f26e521eef3
  0.15%    0.14%  ││↗││  0x00007f26e521eeea: mov    0x24(%rsp),%r11d
  0.09%    0.12%  │││││  0x00007f26e521eeef: mov    0x20(%rsp),%ecx    ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=243}
                  │││││                                                ;*goto
                  │││││                                                ; - com.google.re2j.Machine::step@399 (line 270)
  0.14%    0.06%  │↘│││  0x00007f26e521eef3: test   %eax,0x177a1107(%rip)        # 0x00007f26fc9c0000
                  │ │││                                                ;*goto
                  │ │││                                                ; - com.google.re2j.Machine::step@399 (line 270)
                  │ │││                                                ;   {poll}
  0.13%    0.11%  │ │││  0x00007f26e521eef9: mov    0x8(%rsp),%r10
  0.48%    0.45%  │ │││  0x00007f26e521eefe: mov    0xc(%r10),%r11d
  0.30%    0.34%  │ │││  0x00007f26e521ef02: cmp    %r11d,%eax
                  │ │││  0x00007f26e521ef05: jge    0x00007f26e521f156
  0.13%    0.09%  │ │││  0x00007f26e521ef0b: mov    %ecx,0x20(%rsp)
  0.06%    0.06%  │ │││  0x00007f26e521ef0f: mov    %eax,%r10d         ;*aload_1
                  │ │││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.49%    0.41%  ↘ │││  0x00007f26e521ef12: mov    0x8(%rsp),%r11
  0.37%    0.33%    │││  0x00007f26e521ef17: mov    0x10(%r11),%r8d    ;*getfield dense
                    │││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.27%    0.21%    │││  0x00007f26e521ef1b: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f26e521fce1
  0.37%    0.43%    │││  0x00007f26e521ef20: cmp    %r11d,%r10d
                    │││  0x00007f26e521ef23: jae    0x00007f26e521f4ac
  0.56%    0.50%    │││  0x00007f26e521ef29: lea    (%r12,%r8,8),%r11
  0.29%    0.17%    │││  0x00007f26e521ef2d: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                    │││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.21%    0.09%    │││  0x00007f26e521ef32: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                    │││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                    │││                                                ; implicit exception: dispatches to 0x00007f26e521fd35
  0.73%    0.80%    │││  0x00007f26e521ef37: mov    %r10d,%eax
  0.40%    0.30%    │││  0x00007f26e521ef3a: inc    %eax               ;*iadd
                    │││                                                ; - com.google.re2j.Machine::step@233 (line 298)
  0.21%    0.23%    │││  0x00007f26e521ef3c: test   %r8d,%r8d
                    ╰││  0x00007f26e521ef3f: je     0x00007f26e521eeea  ;*ifnonnull
                     ││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.14%    0.20%     ││  0x00007f26e521ef41: mov    0x24(%rsp),%r9d
  0.04%    0.02%     ││  0x00007f26e521ef46: test   %r9d,%r9d
                     ││  0x00007f26e521ef49: jne    0x00007f26e521f6c1  ;*ifeq
                     ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.26%    0.19%     ││  0x00007f26e521ef4f: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                     ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  1.31%    1.61%     ││  0x00007f26e521ef54: mov    0x18(%r12,%r9,8),%edi  ;*getfield runes
                     ││                                                ; - com.google.re2j.Machine::step@306 (line 314)
                     ││                                                ; implicit exception: dispatches to 0x00007f26e521fd05
  2.37%    3.41%     ││  0x00007f26e521ef59: mov    0xc(%r12,%r9,8),%ecx  ;*getfield op
                     ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
  0.14%    0.09%     ││  0x00007f26e521ef5e: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                     ││                                                ; - com.google.re2j.Machine::step@168 (line 292)
  0.05%    0.05%     ││  0x00007f26e521ef63: lea    (%r12,%r8,8),%r11  ;*getfield thread
                     ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.02%    0.02%     ││  0x00007f26e521ef67: cmp    $0x9,%ecx
                     ╰│  0x00007f26e521ef6a: je     0x00007f26e521ee6d
  0.47%    0.63%      │  0x00007f26e521ef70: cmp    $0x9,%ecx
                      │  0x00007f26e521ef73: jle    0x00007f26e521eff2
                      │  0x00007f26e521ef75: cmp    $0xb,%ecx
                      │  0x00007f26e521ef78: jne    0x00007f26e521ef95  ;*tableswitch
                      │                                                ; - com.google.re2j.Machine::step@114 (line 285)
                      │  0x00007f26e521ef7a: mov    0x20(%rsp),%ecx
                      │  0x00007f26e521ef7e: cmp    $0xa,%ecx
                      ╰  0x00007f26e521ef81: je     0x00007f26e521ee8b  ;*if_icmpeq
                                                                       ; - com.google.re2j.Machine::step@334 (line 322)
                         0x00007f26e521ef87: mov    %r10d,0x74(%rsp)
                         0x00007f26e521ef8c: mov    %eax,0x7c(%rsp)
....................................................................................................
 14.48%   15.23%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 500 (351 bytes) 

                          0x00007f26e521685a: mov    %r10,(%rsp)
                          0x00007f26e521685e: nop
                          0x00007f26e521685f: callq  0x00007f26e5046020  ; OopMap{off=612}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 372)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f26e5216864: jmpq   0x00007f26e52169c7
                  │       0x00007f26e5216869: mov    0x70(%rsp),%rax
                  │╭      0x00007f26e521686e: jmpq   0x00007f26e52169c7  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 352)
  0.75%    0.68%  ││      0x00007f26e5216873: mov    0x30(%rsp),%r11d
                  ││      0x00007f26e5216878: lea    (%r12,%r11,8),%rbp  ;*aaload
                  ││                                                    ; - com.google.re2j.Prog::getInst@5 (line 30)
                  ││                                                    ; - com.google.re2j.Machine::add@30 (line 351)
  0.03%    0.01%  ││      0x00007f26e521687c: mov    0x8(%rsp),%rsi
           0.00%  ││      0x00007f26e5216881: mov    0x48(%rsp),%rdx
  0.30%    0.37%  ││      0x00007f26e5216886: mov    0x1c(%rsp),%r8d
                  ││      0x00007f26e521688b: mov    0x20(%rsp),%r9
  0.02%    0.02%  ││      0x00007f26e5216890: mov    0x28(%rsp),%edi
  0.05%    0.01%  ││      0x00007f26e5216894: mov    0x70(%rsp),%r10
  0.25%    0.27%  ││      0x00007f26e5216899: mov    %r10,(%rsp)
  0.00%           ││      0x00007f26e521689d: xchg   %ax,%ax
  0.03%    0.01%  ││      0x00007f26e521689f: callq  0x00007f26e5046020  ; OopMap{rbp=Oop [8]=Oop [32]=Oop [48]=NarrowOop [72]=Oop off=676}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 361)
                  ││                                                    ;   {optimized virtual_call}
  0.08%    0.09%  ││      0x00007f26e52168a4: mov    0x30(%rsp),%r10d
  0.14%    0.21%  ││      0x00007f26e52168a9: mov    0x14(%r12,%r10,8),%ecx  ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 362)
  0.16%    0.24%  ││      0x00007f26e52168ae: mov    0x8(%rsp),%rsi
  0.06%    0.03%  ││      0x00007f26e52168b3: mov    0x48(%rsp),%rdx
  0.14%    0.11%  ││      0x00007f26e52168b8: mov    0x1c(%rsp),%r8d
  0.00%           ││      0x00007f26e52168bd: mov    0x20(%rsp),%r9
  0.16%    0.21%  ││      0x00007f26e52168c2: mov    0x28(%rsp),%edi
  0.06%    0.06%  ││      0x00007f26e52168c6: mov    %rax,(%rsp)
  0.13%    0.18%  ││      0x00007f26e52168ca: nop
                  ││      0x00007f26e52168cb: callq  0x00007f26e5046020  ; OopMap{off=720}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 362)
                  ││                                                    ;   {optimized virtual_call}
  0.00%    0.01%  ││╭     0x00007f26e52168d0: jmpq   0x00007f26e52169c7  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 391)
  1.23%    1.21%  │││     0x00007f26e52168d5: mov    0x70(%rsp),%rbp
  0.00%           │││     0x00007f26e52168da: test   %rbp,%rbp
                  │││╭    0x00007f26e52168dd: je     0x00007f26e52168ff  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 391)
                  ││││    0x00007f26e52168df: mov    0x30(%rsp),%r10d
                  ││││    0x00007f26e52168e4: mov    %r10d,0x10(%rbp)
  0.09%    0.04%  ││││    0x00007f26e52168e8: mov    %rbp,%r10
                  ││││    0x00007f26e52168eb: shr    $0x9,%r10
                  ││││    0x00007f26e52168ef: movabs $0x7f26f53c8000,%r11
                  ││││    0x00007f26e52168f9: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 394)
  0.07%    0.03%  ││││╭   0x00007f26e52168fd: jmp    0x00007f26e5216958
  0.43%    0.50%  │││↘│   0x00007f26e52168ff: mov    0x8(%rsp),%r10
                  │││ │   0x00007f26e5216904: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f26e5216908: test   %r8d,%r8d
                  │││ │   0x00007f26e521690b: jle    0x00007f26e5216b81  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
  0.02%    0.00%  │││ │   0x00007f26e5216911: mov    0x24(%r10),%r9d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
  0.52%    0.36%  │││ │   0x00007f26e5216915: mov    %r8d,%ebp
                  │││ │   0x00007f26e5216918: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f26e521691a: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
           0.00%  │││ │   0x00007f26e521691e: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f26e5216cad
  0.49%    0.40%  │││ │   0x00007f26e5216923: cmp    %r11d,%ebp
                  │││ │   0x00007f26e5216926: jae    0x00007f26e5216b29
                  │││ │   0x00007f26e521692c: lea    (%r12,%r9,8),%r10
                  │││ │   0x00007f26e5216930: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
  0.01%    0.01%  │││ │   0x00007f26e5216935: mov    0x30(%rsp),%r8d
  0.60%    0.43%  │││ │   0x00007f26e521693a: mov    %r8d,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007f26e5216cbd
                  │││ │   0x00007f26e521693f: lea    (%r12,%r10,8),%rbp  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 392)
                  │││ │   0x00007f26e5216943: mov    %rbp,%r10
           0.01%  │││ │   0x00007f26e5216946: shr    $0x9,%r10
  0.46%    0.34%  │││ │   0x00007f26e521694a: movabs $0x7f26f53c8000,%r11
                  │││ │   0x00007f26e5216954: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 396)
           0.00%  │││ ↘   0x00007f26e5216958: mov    0x20(%rsp),%rdi
  0.00%           │││     0x00007f26e521695d: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 396)
                  │││                                                   ; implicit exception: dispatches to 0x00007f26e5216c9d
  0.49%    0.46%  │││     0x00007f26e5216961: test   %r10d,%r10d
                  │││     0x00007f26e5216964: jle    0x00007f26e5216b66  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 396)
  0.09%    0.06%  │││     0x00007f26e521696a: mov    0xc(%rbp),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 396)
           0.00%  │││     0x00007f26e521696e: mov    %r8,%r11
  0.01%    0.00%  │││     0x00007f26e5216971: shl    $0x3,%r11
  0.51%    0.45%  │││     0x00007f26e5216975: cmp    %rdi,%r11
                  │││  ╭  0x00007f26e5216978: je     0x00007f26e52169a5  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 396)
                  │││  │  0x00007f26e521697a: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f26e5216cd1
  0.02%    0.00%  │││  │  0x00007f26e521697f: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 396)
           0.00%  │││  │  0x00007f26e5216983: cmp    %r10d,%r11d
                  │││  │  0x00007f26e5216986: jb     0x00007f26e5216b45
  0.59%    0.34%  │││  │  0x00007f26e521698c: lea    0x10(%r12,%r8,8),%rsi
                  │││  │  0x00007f26e5216991: add    $0x10,%rdi
  0.00%           │││  │  0x00007f26e5216995: movslq %r10d,%rdx
  0.00%           │││  │  0x00007f26e5216998: movabs $0x7f26e5052640,%r10
  0.49%    0.31%  │││  │  0x00007f26e52169a2: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 399)
  0.08%    0.08%  │││  ↘  0x00007f26e52169a5: mov    %rbx,%r10
           0.00%  │││     0x00007f26e52169a8: mov    %rbp,%r8
  0.46%    0.46%  │││     0x00007f26e52169ab: shr    $0x3,%r8
  0.00%    0.00%  │││     0x00007f26e52169af: mov    %r8d,0x10(%rbx)
  0.04%    0.07%  │││     0x00007f26e52169b3: shr    $0x9,%r10
  0.02%    0.02%  │││     0x00007f26e52169b7: movabs $0x7f26f53c8000,%r11
  0.59%    0.12%  │││     0x00007f26e52169c1: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 399)
  0.01%    0.00%  │││     0x00007f26e52169c5: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 344)
  0.49%    0.78%  ↘↘↘     0x00007f26e52169c7: add    $0x60,%rsp
  0.50%    0.25%          0x00007f26e52169cb: pop    %rbp
  0.02%    0.03%          0x00007f26e52169cc: test   %eax,0x177a962e(%rip)        # 0x00007f26fc9c0000
                                                                        ;   {poll_return}
  0.45%    0.46%          0x00007f26e52169d2: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 352)
                          0x00007f26e52169d3: mov    0x8(%rsp),%rsi
                          0x00007f26e52169d8: mov    0x48(%rsp),%rdx
                          0x00007f26e52169dd: mov    0x1c(%rsp),%r8d
                          0x00007f26e52169e2: mov    0x20(%rsp),%r9
                          0x00007f26e52169e7: mov    0x70(%rsp),%r10
                          0x00007f26e52169ec: mov    %r10,(%rsp)
                          0x00007f26e52169f0: data16 xchg %ax,%ax
                          0x00007f26e52169f3: callq  0x00007f26e5046020  ; OopMap{off=1016}
....................................................................................................
 11.20%    9.79%  <total for region 5>

....[Hottest Regions]...............................................................................
 23.17%   21.24%         C2, level 4  com.google.re2j.Machine::add, version 500 (320 bytes) 
 17.03%   21.96%         C2, level 4  com.google.re2j.Machine::step, version 507 (394 bytes) 
 15.85%   14.38%         C2, level 4  com.google.re2j.Machine::step, version 507 (209 bytes) 
 14.48%   15.23%         C2, level 4  com.google.re2j.Machine::step, version 507 (336 bytes) 
 11.20%    9.79%         C2, level 4  com.google.re2j.Machine::add, version 500 (351 bytes) 
  5.45%    6.20%         C2, level 4  com.google.re2j.Machine::match, version 545 (808 bytes) 
  4.14%    4.41%         C2, level 4  com.google.re2j.Machine::step, version 507 (231 bytes) 
  3.16%    1.74%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.46%    0.66%         C2, level 4  com.google.re2j.Machine::step, version 507 (26 bytes) 
  0.25%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 553 (236 bytes) 
  0.23%    0.24%         C2, level 4  com.google.re2j.Machine::add, version 500 (54 bytes) 
  0.19%    0.19%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.19%    0.19%         C2, level 4  com.google.re2j.Machine::match, version 545 (115 bytes) 
  0.18%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.15%    0.03%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.14%    0.07%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.19%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (109 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (24 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (55 bytes) 
  3.41%    3.37%  <...other 637 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.96%   56.63%         C2, level 4  com.google.re2j.Machine::step, version 507 
 34.60%   31.27%         C2, level 4  com.google.re2j.Machine::add, version 500 
  5.76%    6.45%         C2, level 4  com.google.re2j.Machine::match, version 545 
  3.16%    1.74%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.49%    1.63%   [kernel.kallsyms]  [unknown] 
  0.38%    0.08%         C2, level 4  com.google.re2j.Machine::init, version 553 
  0.13%    0.11%         C2, level 4  com.google.re2j.Matcher::find, version 575 
  0.09%    0.11%      hsdis-amd64.so  [unknown] 
  0.09%    0.19%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.09%    0.24%        libc-2.26.so  vfprintf 
  0.06%    0.13%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.09%        libc-2.26.so  _IO_fwrite 
  0.04%    0.00%  libpthread-2.26.so  __libc_write 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 604 
  0.04%    0.01%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.03%    0.04%        libc-2.26.so  __strchr_avx2 
  0.03%    0.14%        libc-2.26.so  __strlen_avx2 
  0.03%    0.06%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.00%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.02%         C2, level 4  com.google.re2j.MachineInput$UTF16Input::indexOf, version 585 
  0.88%    0.70%  <...other 121 warm methods...>
....................................................................................................
100.00%   99.66%  <totals>

....[Distribution by Source]........................................................................
 92.91%   94.58%         C2, level 4
  3.19%    1.75%        runtime stub
  2.49%    1.63%   [kernel.kallsyms]
  0.72%    1.02%           libjvm.so
  0.36%    0.82%        libc-2.26.so
  0.14%    0.06%  libpthread-2.26.so
  0.09%    0.11%      hsdis-amd64.so
  0.06%    0.02%         interpreter
  0.02%                       [vdso]
  0.01%    0.01%         C1, level 3
  0.00%                             
  0.00%                   ld-2.26.so
  0.00%               perf-11167.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  1890.628 ± 17.459  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
