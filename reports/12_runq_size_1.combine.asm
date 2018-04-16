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
# Warmup Iteration   1: 4826.089 ops/s
# Warmup Iteration   2: 5087.083 ops/s
# Warmup Iteration   3: 5151.044 ops/s
# Warmup Iteration   4: 5199.793 ops/s
# Warmup Iteration   5: 5045.415 ops/s
# Warmup Iteration   6: 5117.749 ops/s
# Warmup Iteration   7: 5156.368 ops/s
# Warmup Iteration   8: 5153.632 ops/s
# Warmup Iteration   9: 5199.520 ops/s
# Warmup Iteration  10: 5191.883 ops/s
# Warmup Iteration  11: 5113.904 ops/s
# Warmup Iteration  12: 5172.754 ops/s
# Warmup Iteration  13: 5152.173 ops/s
# Warmup Iteration  14: 5196.152 ops/s
# Warmup Iteration  15: 5175.552 ops/s
# Warmup Iteration  16: 5129.167 ops/s
# Warmup Iteration  17: 5033.795 ops/s
# Warmup Iteration  18: 5189.468 ops/s
# Warmup Iteration  19: 5196.820 ops/s
# Warmup Iteration  20: 5186.759 ops/s
Iteration   1: 5152.398 ops/s
Iteration   2: 5168.346 ops/s
Iteration   3: 4989.093 ops/s
Iteration   4: 5195.584 ops/s
Iteration   5: 5194.027 ops/s
Iteration   6: 5159.994 ops/s
Iteration   7: 5213.524 ops/s
Iteration   8: 5199.682 ops/s
Iteration   9: 5204.165 ops/s
Iteration  10: 5193.635 ops/s
Iteration  11: 5160.862 ops/s
Iteration  12: 5207.264 ops/s
Iteration  13: 5188.250 ops/s
Iteration  14: 5210.618 ops/s
Iteration  15: 4962.646 ops/s
Iteration  16: 5159.930 ops/s
Iteration  17: 5183.627 ops/s
Iteration  18: 5176.044 ops/s
Iteration  19: 5198.470 ops/s
Iteration  20: 5191.094 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5165.463 ±(99.9%) 58.588 ops/s [Average]
  (min, avg, max) = (4962.646, 5165.463, 5213.524), stdev = 67.470
  CI (99.9%): [5106.875, 5224.050] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5165.463 ± 58.588  ops/s
