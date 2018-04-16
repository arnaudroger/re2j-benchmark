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
# Warmup Iteration   1: 4980.115 ops/s
# Warmup Iteration   2: 5271.800 ops/s
# Warmup Iteration   3: 5284.675 ops/s
# Warmup Iteration   4: 5355.721 ops/s
# Warmup Iteration   5: 5251.126 ops/s
# Warmup Iteration   6: 5318.028 ops/s
# Warmup Iteration   7: 5317.656 ops/s
# Warmup Iteration   8: 5326.187 ops/s
# Warmup Iteration   9: 5377.166 ops/s
# Warmup Iteration  10: 5338.099 ops/s
# Warmup Iteration  11: 5366.669 ops/s
# Warmup Iteration  12: 5351.642 ops/s
# Warmup Iteration  13: 5333.179 ops/s
# Warmup Iteration  14: 5373.179 ops/s
# Warmup Iteration  15: 5367.641 ops/s
# Warmup Iteration  16: 5378.068 ops/s
# Warmup Iteration  17: 5379.772 ops/s
# Warmup Iteration  18: 5348.478 ops/s
# Warmup Iteration  19: 5380.712 ops/s
# Warmup Iteration  20: 5373.425 ops/s
Iteration   1: 5383.328 ops/s
Iteration   2: 5386.544 ops/s
Iteration   3: 5370.842 ops/s
Iteration   4: 5393.575 ops/s
Iteration   5: 5378.296 ops/s
Iteration   6: 5388.988 ops/s
Iteration   7: 5377.284 ops/s
Iteration   8: 5348.983 ops/s
Iteration   9: 5387.575 ops/s
Iteration  10: 5354.253 ops/s
Iteration  11: 5377.625 ops/s
Iteration  12: 5358.064 ops/s
Iteration  13: 5356.750 ops/s
Iteration  14: 5379.261 ops/s
Iteration  15: 5387.280 ops/s
Iteration  16: 5382.848 ops/s
Iteration  17: 5372.700 ops/s
Iteration  18: 5351.111 ops/s
Iteration  19: 5394.865 ops/s
Iteration  20: 5378.144 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5375.416 ±(99.9%) 12.403 ops/s [Average]
  (min, avg, max) = (5348.983, 5375.416, 5394.865), stdev = 14.284
  CI (99.9%): [5363.012, 5387.819] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5375.416 ± 12.403  ops/s
