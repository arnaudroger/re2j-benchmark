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
# Warmup Iteration   1: 4952.639 ops/s
# Warmup Iteration   2: 5172.900 ops/s
# Warmup Iteration   3: 5097.549 ops/s
# Warmup Iteration   4: 5226.202 ops/s
# Warmup Iteration   5: 5237.447 ops/s
# Warmup Iteration   6: 5298.379 ops/s
# Warmup Iteration   7: 5266.882 ops/s
# Warmup Iteration   8: 5263.470 ops/s
# Warmup Iteration   9: 5267.988 ops/s
# Warmup Iteration  10: 5287.019 ops/s
# Warmup Iteration  11: 5272.390 ops/s
# Warmup Iteration  12: 5261.953 ops/s
# Warmup Iteration  13: 5254.112 ops/s
# Warmup Iteration  14: 5305.815 ops/s
# Warmup Iteration  15: 5306.554 ops/s
# Warmup Iteration  16: 5268.221 ops/s
# Warmup Iteration  17: 5224.836 ops/s
# Warmup Iteration  18: 5265.828 ops/s
# Warmup Iteration  19: 5302.319 ops/s
# Warmup Iteration  20: 5307.882 ops/s
Iteration   1: 5290.406 ops/s
Iteration   2: 5266.749 ops/s
Iteration   3: 5279.546 ops/s
Iteration   4: 5288.199 ops/s
Iteration   5: 5259.793 ops/s
Iteration   6: 5302.293 ops/s
Iteration   7: 5269.571 ops/s
Iteration   8: 5290.852 ops/s
Iteration   9: 5304.497 ops/s
Iteration  10: 5295.432 ops/s
Iteration  11: 5300.270 ops/s
Iteration  12: 5247.122 ops/s
Iteration  13: 5272.337 ops/s
Iteration  14: 5288.070 ops/s
Iteration  15: 5306.243 ops/s
Iteration  16: 5303.743 ops/s
Iteration  17: 5261.665 ops/s
Iteration  18: 5296.041 ops/s
Iteration  19: 5291.461 ops/s
Iteration  20: 5286.219 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5285.025 ±(99.9%) 14.704 ops/s [Average]
  (min, avg, max) = (5247.122, 5285.025, 5306.243), stdev = 16.933
  CI (99.9%): [5270.321, 5299.729] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5285.025 ± 14.704  ops/s
