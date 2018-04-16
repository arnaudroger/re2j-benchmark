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
# Warmup Iteration   1: 7246.831 ops/s
# Warmup Iteration   2: 7558.070 ops/s
# Warmup Iteration   3: 7529.506 ops/s
# Warmup Iteration   4: 7533.185 ops/s
# Warmup Iteration   5: 7594.859 ops/s
# Warmup Iteration   6: 7599.195 ops/s
# Warmup Iteration   7: 7539.513 ops/s
# Warmup Iteration   8: 7509.101 ops/s
# Warmup Iteration   9: 7436.343 ops/s
# Warmup Iteration  10: 7444.281 ops/s
# Warmup Iteration  11: 7575.263 ops/s
# Warmup Iteration  12: 7596.106 ops/s
# Warmup Iteration  13: 7562.884 ops/s
# Warmup Iteration  14: 7518.168 ops/s
# Warmup Iteration  15: 7562.225 ops/s
# Warmup Iteration  16: 7552.227 ops/s
# Warmup Iteration  17: 7644.089 ops/s
# Warmup Iteration  18: 7639.861 ops/s
# Warmup Iteration  19: 7552.508 ops/s
# Warmup Iteration  20: 7614.544 ops/s
Iteration   1: 7613.225 ops/s
Iteration   2: 7596.463 ops/s
Iteration   3: 7600.114 ops/s
Iteration   4: 7506.911 ops/s
Iteration   5: 7588.949 ops/s
Iteration   6: 7601.962 ops/s
Iteration   7: 7585.605 ops/s
Iteration   8: 7590.050 ops/s
Iteration   9: 7543.866 ops/s
Iteration  10: 7582.812 ops/s
Iteration  11: 7592.029 ops/s
Iteration  12: 7605.674 ops/s
Iteration  13: 7601.796 ops/s
Iteration  14: 7540.114 ops/s
Iteration  15: 7581.410 ops/s
Iteration  16: 7601.504 ops/s
Iteration  17: 7585.590 ops/s
Iteration  18: 7585.610 ops/s
Iteration  19: 7474.855 ops/s
Iteration  20: 7583.603 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  7578.107 ±(99.9%) 30.554 ops/s [Average]
  (min, avg, max) = (7474.855, 7578.107, 7613.225), stdev = 35.186
  CI (99.9%): [7547.553, 7608.661] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  7578.107 ± 30.554  ops/s
