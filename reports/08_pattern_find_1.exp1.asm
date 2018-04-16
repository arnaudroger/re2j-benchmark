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
# Warmup Iteration   1: 18300.269 ops/s
# Warmup Iteration   2: 19287.876 ops/s
# Warmup Iteration   3: 19322.395 ops/s
# Warmup Iteration   4: 19368.171 ops/s
# Warmup Iteration   5: 19500.525 ops/s
# Warmup Iteration   6: 19366.732 ops/s
# Warmup Iteration   7: 19585.314 ops/s
# Warmup Iteration   8: 19507.187 ops/s
# Warmup Iteration   9: 19423.226 ops/s
# Warmup Iteration  10: 19557.907 ops/s
# Warmup Iteration  11: 19542.952 ops/s
# Warmup Iteration  12: 19532.603 ops/s
# Warmup Iteration  13: 19516.124 ops/s
# Warmup Iteration  14: 19438.854 ops/s
# Warmup Iteration  15: 19563.580 ops/s
# Warmup Iteration  16: 19521.122 ops/s
# Warmup Iteration  17: 19218.594 ops/s
# Warmup Iteration  18: 19191.208 ops/s
# Warmup Iteration  19: 19463.803 ops/s
# Warmup Iteration  20: 19571.307 ops/s
Iteration   1: 19564.020 ops/s
Iteration   2: 19597.931 ops/s
Iteration   3: 19545.445 ops/s
Iteration   4: 19438.492 ops/s
Iteration   5: 19601.885 ops/s
Iteration   6: 19568.023 ops/s
Iteration   7: 19599.805 ops/s
Iteration   8: 19553.988 ops/s
Iteration   9: 19465.219 ops/s
Iteration  10: 19532.939 ops/s
Iteration  11: 19580.250 ops/s
Iteration  12: 19575.100 ops/s
Iteration  13: 19562.086 ops/s
Iteration  14: 19457.979 ops/s
Iteration  15: 19577.147 ops/s
Iteration  16: 19595.427 ops/s
Iteration  17: 19586.697 ops/s
Iteration  18: 19565.369 ops/s
Iteration  19: 19440.828 ops/s
Iteration  20: 19599.638 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  19550.413 ±(99.9%) 47.504 ops/s [Average]
  (min, avg, max) = (19438.492, 19550.413, 19601.885), stdev = 54.706
  CI (99.9%): [19502.909, 19597.918] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  19550.413 ± 47.504  ops/s
