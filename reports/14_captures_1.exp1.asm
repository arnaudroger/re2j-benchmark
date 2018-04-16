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
<forked VM failed with exit code 134>
<stdout last='20 lines'>
  0x00007f5cf5175e35: aadd    %al,(%rax)
  0x00007f5cf5175e37: nadd    %al,(%rax)
  0x00007f5cf5175e39: g/Sadd    %al,(%rax)
  0x00007f5cf5175e3b: eadd    %al,(%rax)
  0x00007f5cf5175e3d: curadd    %al,(%rax)
  0x00007f5cf5175e3f: .byte 0x0
ityManager;' in 'java/lang/System'
Decoding VtableStub vtbl[36]@12
  #           [sp+0x40]  (sp of caller)
  0x00007f5cf51b8920: mov    %eax,-0x14000(%rsp)

  0x00007f5cf5175e50:   0x00007f5cf51b8927: mov%rbp    
  0x00007f5cf51b8928: sub    $0x30,%rsp
  0x00007f5cf51b892c: movabs $0x76cf80c78,%rax  ;   {oop(a 'java/lang/Class' = 'java/lang/System')}
  0x00007f5cf51b8936: mov    0x74(%rax),%eax
  0x00007f5cf51b8939: shl    $0x3,%rax          ;*getstatic security
                                                ; - java.lang.System::getSecurityManager@0 (line 334)

  0x00007f5cf51b893d: add    $0x30,%rsp
  0x00007f5cf51b8941: pop    %rbp
</stdout>
<stderr last='20 lines'>
WARNING: Kernel address maps (/proc/{kallsyms,modules}) are restricted,
check /proc/sys/kernel/kptr_restrict.

Samples in kernel functions may not be resolved if a suitable vmlinux
file is not found in the buildid cache or in the vmlinux path.

Samples in kernel modules won't be resolved at all.

If some relocation was applied (e.g. kexec) symbols may be misresolved
even with a suitable vmlinux or kallsyms file.

Couldn't record kernel reference relocation symbol
Symbol resolution may be skewed if relocation was used (e.g. kexec).
Check /proc/kallsyms permission or run as root.
Java HotSpot(TM) 64-Bit Server VM warning: PrintAssembly is enabled; turning on DebugNonSafepoints to gain additional output
[ perf record: Woken up 1 times to write data ]
[kernel.kallsyms] with build id 6bdee301cd0ea1b997183c1e367b640cf42aed7d not found, continuing without symbols
[ perf record: Captured and wrote 0.235 MB /tmp/jmh4351589178317384660perfbin (5015 samples) ]
</stderr>

# Run complete. Total time: 00:00:00

Benchmark  Mode  Cnt  Score   Error  Units
