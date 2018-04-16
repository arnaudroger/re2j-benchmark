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
# Warmup Iteration   1: 5887.449 ops/s
# Warmup Iteration   2: 6266.576 ops/s
# Warmup Iteration   3: 6283.834 ops/s
# Warmup Iteration   4: 6212.363 ops/s
# Warmup Iteration   5: 6285.028 ops/s
# Warmup Iteration   6: 6265.052 ops/s
# Warmup Iteration   7: 6271.798 ops/s
# Warmup Iteration   8: 6262.408 ops/s
# Warmup Iteration   9: 6278.885 ops/s
# Warmup Iteration  10: 6329.062 ops/s
# Warmup Iteration  11: 6257.073 ops/s
# Warmup Iteration  12: 6278.416 ops/s
# Warmup Iteration  13: 6266.324 ops/s
# Warmup Iteration  14: 6142.529 ops/s
# Warmup Iteration  15: 6282.818 ops/s
# Warmup Iteration  16: 6283.824 ops/s
# Warmup Iteration  17: 6258.864 ops/s
# Warmup Iteration  18: 6260.116 ops/s
# Warmup Iteration  19: 6222.276 ops/s
# Warmup Iteration  20: 6265.456 ops/s
Iteration   1: 6253.705 ops/s
Iteration   2: 6290.095 ops/s
Iteration   3: 6276.136 ops/s
Iteration   4: 6220.933 ops/s
Iteration   5: 6276.649 ops/s
Iteration   6: 6287.934 ops/s
Iteration   7: 6285.379 ops/s
Iteration   8: 6305.588 ops/s
Iteration   9: 6211.449 ops/s
Iteration  10: 6285.779 ops/s
Iteration  11: 6286.796 ops/s
Iteration  12: 6284.140 ops/s
Iteration  13: 6269.690 ops/s
Iteration  14: 6250.650 ops/s
Iteration  15: 6295.446 ops/s
Iteration  16: 6287.370 ops/s
Iteration  17: 6277.289 ops/s
Iteration  18: 6276.319 ops/s
Iteration  19: 6248.656 ops/s
Iteration  20: 6276.852 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  6272.343 ±(99.9%) 20.848 ops/s [Average]
  (min, avg, max) = (6211.449, 6272.343, 6305.588), stdev = 24.009
  CI (99.9%): [6251.494, 6293.191] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  6272.343 ± 20.848  ops/s
