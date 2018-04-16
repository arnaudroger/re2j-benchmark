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
# Warmup Iteration   1: 3256.281 ops/s
# Warmup Iteration   2: 3369.272 ops/s
# Warmup Iteration   3: 3377.751 ops/s
# Warmup Iteration   4: 3359.021 ops/s
# Warmup Iteration   5: 3387.348 ops/s
# Warmup Iteration   6: 3387.360 ops/s
# Warmup Iteration   7: 3376.834 ops/s
# Warmup Iteration   8: 3389.358 ops/s
# Warmup Iteration   9: 3367.207 ops/s
# Warmup Iteration  10: 3390.643 ops/s
# Warmup Iteration  11: 3391.504 ops/s
# Warmup Iteration  12: 3388.988 ops/s
# Warmup Iteration  13: 3389.125 ops/s
# Warmup Iteration  14: 3346.378 ops/s
# Warmup Iteration  15: 3382.504 ops/s
# Warmup Iteration  16: 3393.058 ops/s
# Warmup Iteration  17: 3236.462 ops/s
# Warmup Iteration  18: 3241.157 ops/s
# Warmup Iteration  19: 3317.624 ops/s
# Warmup Iteration  20: 3391.811 ops/s
Iteration   1: 3392.058 ops/s
Iteration   2: 3108.887 ops/s
Iteration   3: 2882.842 ops/s
Iteration   4: 3368.617 ops/s
Iteration   5: 3401.102 ops/s
Iteration   6: 3401.125 ops/s
Iteration   7: 3396.293 ops/s
Iteration   8: 3391.287 ops/s
Iteration   9: 3256.362 ops/s
Iteration  10: 2836.053 ops/s
Iteration  11: 3408.293 ops/s
Iteration  12: 3420.549 ops/s
Iteration  13: 2654.950 ops/s
Iteration  14: 2911.381 ops/s
Iteration  15: 3376.881 ops/s
Iteration  16: 3373.883 ops/s
Iteration  17: 3405.526 ops/s
Iteration  18: 2473.233 ops/s
Iteration  19: 1969.376 ops/s
Iteration  20: 1984.001 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  3070.635 ±(99.9%) 409.656 ops/s [Average]
  (min, avg, max) = (1969.376, 3070.635, 3420.549), stdev = 471.761
  CI (99.9%): [2660.979, 3480.291] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  3070.635 ± 409.656  ops/s
