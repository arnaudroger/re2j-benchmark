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
# Warmup Iteration   1: 4976.230 ops/s
# Warmup Iteration   2: 5223.516 ops/s
# Warmup Iteration   3: 5261.044 ops/s
# Warmup Iteration   4: 5285.682 ops/s
# Warmup Iteration   5: 5269.317 ops/s
# Warmup Iteration   6: 5260.083 ops/s
# Warmup Iteration   7: 5316.540 ops/s
# Warmup Iteration   8: 5297.972 ops/s
# Warmup Iteration   9: 5296.650 ops/s
# Warmup Iteration  10: 5289.216 ops/s
# Warmup Iteration  11: 5260.368 ops/s
# Warmup Iteration  12: 5303.662 ops/s
# Warmup Iteration  13: 5278.353 ops/s
# Warmup Iteration  14: 5298.129 ops/s
# Warmup Iteration  15: 5289.368 ops/s
# Warmup Iteration  16: 5244.989 ops/s
# Warmup Iteration  17: 5285.259 ops/s
# Warmup Iteration  18: 5277.095 ops/s
# Warmup Iteration  19: 5294.149 ops/s
# Warmup Iteration  20: 5285.407 ops/s
Iteration   1: 5235.089 ops/s
Iteration   2: 4272.962 ops/s
Iteration   3: 5293.668 ops/s
Iteration   4: 5295.060 ops/s
Iteration   5: 5296.541 ops/s
Iteration   6: 5254.519 ops/s
Iteration   7: 5299.604 ops/s
Iteration   8: 5297.505 ops/s
Iteration   9: 5300.721 ops/s
Iteration  10: 5281.786 ops/s
Iteration  11: 5256.133 ops/s
Iteration  12: 5290.180 ops/s
Iteration  13: 5301.243 ops/s
Iteration  14: 5286.927 ops/s
Iteration  15: 5279.241 ops/s
Iteration  16: 5262.533 ops/s
Iteration  17: 5272.098 ops/s
Iteration  18: 5299.922 ops/s
Iteration  19: 5292.110 ops/s
Iteration  20: 5294.886 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5233.136 ±(99.9%) 196.909 ops/s [Average]
  (min, avg, max) = (4272.962, 5233.136, 5301.243), stdev = 226.760
  CI (99.9%): [5036.228, 5430.045] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine  thrpt   20  5233.136 ± 196.909  ops/s
