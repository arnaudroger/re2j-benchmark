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
# Warmup Iteration   1: 24658.313 ops/s
# Warmup Iteration   2: 26103.128 ops/s
# Warmup Iteration   3: 26471.859 ops/s
# Warmup Iteration   4: 26510.358 ops/s
# Warmup Iteration   5: 26440.293 ops/s
# Warmup Iteration   6: 26470.001 ops/s
# Warmup Iteration   7: 26440.473 ops/s
# Warmup Iteration   8: 26627.806 ops/s
# Warmup Iteration   9: 26567.160 ops/s
# Warmup Iteration  10: 26543.439 ops/s
# Warmup Iteration  11: 26591.687 ops/s
# Warmup Iteration  12: 26376.303 ops/s
# Warmup Iteration  13: 26608.504 ops/s
# Warmup Iteration  14: 26649.825 ops/s
# Warmup Iteration  15: 26585.703 ops/s
# Warmup Iteration  16: 26594.350 ops/s
# Warmup Iteration  17: 25813.459 ops/s
# Warmup Iteration  18: 26024.832 ops/s
# Warmup Iteration  19: 26422.699 ops/s
# Warmup Iteration  20: 26407.762 ops/s
Iteration   1: 26497.331 ops/s
Iteration   2: 26333.510 ops/s
Iteration   3: 26541.495 ops/s
Iteration   4: 26519.935 ops/s
Iteration   5: 26474.330 ops/s
Iteration   6: 26549.216 ops/s
Iteration   7: 26442.764 ops/s
Iteration   8: 26646.796 ops/s
Iteration   9: 26656.375 ops/s
Iteration  10: 26624.768 ops/s
Iteration  11: 26499.079 ops/s
Iteration  12: 26325.473 ops/s
Iteration  13: 26466.141 ops/s
Iteration  14: 26464.323 ops/s
Iteration  15: 26414.284 ops/s
Iteration  16: 26494.915 ops/s
Iteration  17: 26215.500 ops/s
Iteration  18: 26626.575 ops/s
Iteration  19: 25727.327 ops/s
Iteration  20: 26561.120 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  26454.063 ±(99.9%) 177.462 ops/s [Average]
  (min, avg, max) = (25727.327, 26454.063, 26656.375), stdev = 204.366
  CI (99.9%): [26276.601, 26631.525] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  26454.063 ± 177.462  ops/s
