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
# Warmup Iteration   1: 4991.277 ops/s
# Warmup Iteration   2: 5321.306 ops/s
# Warmup Iteration   3: 5300.724 ops/s
# Warmup Iteration   4: 5422.352 ops/s
# Warmup Iteration   5: 5326.248 ops/s
# Warmup Iteration   6: 5424.926 ops/s
# Warmup Iteration   7: 5395.262 ops/s
# Warmup Iteration   8: 5423.733 ops/s
# Warmup Iteration   9: 5425.378 ops/s
# Warmup Iteration  10: 5392.200 ops/s
# Warmup Iteration  11: 5409.568 ops/s
# Warmup Iteration  12: 5377.246 ops/s
# Warmup Iteration  13: 5373.538 ops/s
# Warmup Iteration  14: 5405.013 ops/s
# Warmup Iteration  15: 5385.294 ops/s
# Warmup Iteration  16: 5421.003 ops/s
# Warmup Iteration  17: 5403.619 ops/s
# Warmup Iteration  18: 5417.227 ops/s
# Warmup Iteration  19: 5432.448 ops/s
# Warmup Iteration  20: 5423.082 ops/s
Iteration   1: 5370.410 ops/s
Iteration   2: 5354.705 ops/s
Iteration   3: 5384.045 ops/s
Iteration   4: 5387.835 ops/s
Iteration   5: 5359.327 ops/s
Iteration   6: 5365.655 ops/s
Iteration   7: 5353.454 ops/s
Iteration   8: 5389.387 ops/s
Iteration   9: 5368.090 ops/s
Iteration  10: 5383.553 ops/s
Iteration  11: 5368.236 ops/s
Iteration  12: 5254.214 ops/s
Iteration  13: 5392.939 ops/s
Iteration  14: 5278.455 ops/s
Iteration  15: 5382.989 ops/s
Iteration  16: 5001.872 ops/s
Iteration  17: 5258.317 ops/s
Iteration  18: 5266.508 ops/s
Iteration  19: 5386.364 ops/s
Iteration  20: 5357.739 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5333.205 ±(99.9%) 78.746 ops/s [Average]
  (min, avg, max) = (5001.872, 5333.205, 5392.939), stdev = 90.684
  CI (99.9%): [5254.459, 5411.950] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5333.205 ± 78.746  ops/s
