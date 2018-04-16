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
# Warmup Iteration   1: 5747.885 ops/s
# Warmup Iteration   2: 6148.984 ops/s
# Warmup Iteration   3: 6114.333 ops/s
# Warmup Iteration   4: 6141.146 ops/s
# Warmup Iteration   5: 6156.760 ops/s
# Warmup Iteration   6: 6143.489 ops/s
# Warmup Iteration   7: 6146.565 ops/s
# Warmup Iteration   8: 6104.323 ops/s
# Warmup Iteration   9: 6333.132 ops/s
# Warmup Iteration  10: 6333.631 ops/s
# Warmup Iteration  11: 6315.024 ops/s
# Warmup Iteration  12: 6319.856 ops/s
# Warmup Iteration  13: 6263.821 ops/s
# Warmup Iteration  14: 6327.459 ops/s
# Warmup Iteration  15: 6323.788 ops/s
# Warmup Iteration  16: 6327.736 ops/s
# Warmup Iteration  17: 6294.936 ops/s
# Warmup Iteration  18: 6250.777 ops/s
# Warmup Iteration  19: 6296.080 ops/s
# Warmup Iteration  20: 6315.468 ops/s
Iteration   1: 6293.775 ops/s
Iteration   2: 6314.655 ops/s
Iteration   3: 6273.681 ops/s
Iteration   4: 6321.919 ops/s
Iteration   5: 6269.905 ops/s
Iteration   6: 6248.662 ops/s
Iteration   7: 6254.792 ops/s
Iteration   8: 6222.134 ops/s
Iteration   9: 6175.607 ops/s
Iteration  10: 6327.078 ops/s
Iteration  11: 6334.489 ops/s
Iteration  12: 6330.722 ops/s
Iteration  13: 6312.879 ops/s
Iteration  14: 6332.876 ops/s
Iteration  15: 6333.768 ops/s
Iteration  16: 6328.495 ops/s
Iteration  17: 6317.570 ops/s
Iteration  18: 6318.372 ops/s
Iteration  19: 6335.217 ops/s
Iteration  20: 6269.037 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  6295.782 ±(99.9%) 38.373 ops/s [Average]
  (min, avg, max) = (6175.607, 6295.782, 6335.217), stdev = 44.191
  CI (99.9%): [6257.409, 6334.155] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  6295.782 ± 38.373  ops/s
