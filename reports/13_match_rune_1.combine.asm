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
# Warmup Iteration   1: 5044.055 ops/s
# Warmup Iteration   2: 5372.311 ops/s
# Warmup Iteration   3: 5357.010 ops/s
# Warmup Iteration   4: 5463.912 ops/s
# Warmup Iteration   5: 5417.164 ops/s
# Warmup Iteration   6: 5352.916 ops/s
# Warmup Iteration   7: 5325.236 ops/s
# Warmup Iteration   8: 5283.577 ops/s
# Warmup Iteration   9: 5334.959 ops/s
# Warmup Iteration  10: 5326.478 ops/s
# Warmup Iteration  11: 5427.287 ops/s
# Warmup Iteration  12: 5414.293 ops/s
# Warmup Iteration  13: 5372.692 ops/s
# Warmup Iteration  14: 5449.078 ops/s
# Warmup Iteration  15: 5436.982 ops/s
# Warmup Iteration  16: 5453.950 ops/s
# Warmup Iteration  17: 5425.172 ops/s
# Warmup Iteration  18: 5362.637 ops/s
# Warmup Iteration  19: 5434.427 ops/s
# Warmup Iteration  20: 5420.981 ops/s
Iteration   1: 5402.907 ops/s
Iteration   2: 5392.560 ops/s
Iteration   3: 5354.192 ops/s
Iteration   4: 5407.361 ops/s
Iteration   5: 5411.432 ops/s
Iteration   6: 5404.804 ops/s
Iteration   7: 5396.053 ops/s
Iteration   8: 5365.446 ops/s
Iteration   9: 5405.758 ops/s
Iteration  10: 5413.701 ops/s
Iteration  11: 5418.478 ops/s
Iteration  12: 5402.913 ops/s
Iteration  13: 5369.115 ops/s
Iteration  14: 5407.102 ops/s
Iteration  15: 5417.308 ops/s
Iteration  16: 5401.799 ops/s
Iteration  17: 5400.057 ops/s
Iteration  18: 5335.005 ops/s
Iteration  19: 5414.562 ops/s
Iteration  20: 5408.686 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5396.462 ±(99.9%) 19.640 ops/s [Average]
  (min, avg, max) = (5335.005, 5396.462, 5418.478), stdev = 22.617
  CI (99.9%): [5376.822, 5416.101] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5396.462 ± 19.640  ops/s
