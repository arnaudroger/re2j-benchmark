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
# Warmup Iteration   1: 14100.236 ops/s
# Warmup Iteration   2: 9867.996 ops/s
# Warmup Iteration   3: 14677.018 ops/s
# Warmup Iteration   4: 14621.258 ops/s
# Warmup Iteration   5: 14745.399 ops/s
# Warmup Iteration   6: 14816.149 ops/s
# Warmup Iteration   7: 14633.966 ops/s
# Warmup Iteration   8: 14866.450 ops/s
# Warmup Iteration   9: 14765.029 ops/s
# Warmup Iteration  10: 14847.426 ops/s
# Warmup Iteration  11: 14751.893 ops/s
# Warmup Iteration  12: 14727.230 ops/s
# Warmup Iteration  13: 14840.900 ops/s
# Warmup Iteration  14: 14806.603 ops/s
# Warmup Iteration  15: 14869.518 ops/s
# Warmup Iteration  16: 14832.124 ops/s
# Warmup Iteration  17: 14424.166 ops/s
# Warmup Iteration  18: 14620.607 ops/s
# Warmup Iteration  19: 14684.501 ops/s
# Warmup Iteration  20: 14691.511 ops/s
Iteration   1: 14395.510 ops/s
Iteration   2: 14552.393 ops/s
Iteration   3: 14663.740 ops/s
Iteration   4: 14550.068 ops/s
Iteration   5: 14654.251 ops/s
Iteration   6: 14593.759 ops/s
Iteration   7: 14509.225 ops/s
Iteration   8: 13910.183 ops/s
Iteration   9: 14655.661 ops/s
Iteration  10: 14644.366 ops/s
Iteration  11: 14625.324 ops/s
Iteration  12: 14552.145 ops/s
Iteration  13: 14229.849 ops/s
Iteration  14: 14576.422 ops/s
Iteration  15: 14611.868 ops/s
Iteration  16: 14620.817 ops/s
Iteration  17: 14477.112 ops/s
Iteration  18: 14663.740 ops/s
Iteration  19: 14638.365 ops/s
Iteration  20: 14591.657 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  14535.823 ±(99.9%) 157.137 ops/s [Average]
  (min, avg, max) = (13910.183, 14535.823, 14663.740), stdev = 180.959
  CI (99.9%): [14378.686, 14692.960] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  14535.823 ± 157.137  ops/s
