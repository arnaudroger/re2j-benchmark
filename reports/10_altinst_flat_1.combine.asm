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
# Warmup Iteration   1: 4871.444 ops/s
# Warmup Iteration   2: 5224.585 ops/s
# Warmup Iteration   3: 5253.598 ops/s
# Warmup Iteration   4: 5285.031 ops/s
# Warmup Iteration   5: 5261.153 ops/s
# Warmup Iteration   6: 5262.841 ops/s
# Warmup Iteration   7: 5296.634 ops/s
# Warmup Iteration   8: 5282.251 ops/s
# Warmup Iteration   9: 5295.904 ops/s
# Warmup Iteration  10: 5291.377 ops/s
# Warmup Iteration  11: 5195.956 ops/s
# Warmup Iteration  12: 5255.443 ops/s
# Warmup Iteration  13: 5118.120 ops/s
# Warmup Iteration  14: 5245.343 ops/s
# Warmup Iteration  15: 5263.190 ops/s
# Warmup Iteration  16: 5234.615 ops/s
# Warmup Iteration  17: 5265.973 ops/s
# Warmup Iteration  18: 5253.444 ops/s
# Warmup Iteration  19: 5289.219 ops/s
# Warmup Iteration  20: 5277.300 ops/s
Iteration   1: 5245.108 ops/s
Iteration   2: 5227.180 ops/s
Iteration   3: 5217.209 ops/s
Iteration   4: 5222.184 ops/s
Iteration   5: 5206.008 ops/s
Iteration   6: 5179.152 ops/s
Iteration   7: 5106.927 ops/s
Iteration   8: 5218.604 ops/s
Iteration   9: 5227.738 ops/s
Iteration  10: 5193.244 ops/s
Iteration  11: 5184.718 ops/s
Iteration  12: 5207.388 ops/s
Iteration  13: 5223.582 ops/s
Iteration  14: 5224.567 ops/s
Iteration  15: 5204.547 ops/s
Iteration  16: 5190.298 ops/s
Iteration  17: 5221.841 ops/s
Iteration  18: 5227.912 ops/s
Iteration  19: 5210.886 ops/s
Iteration  20: 5199.655 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5206.937 ±(99.9%) 25.065 ops/s [Average]
  (min, avg, max) = (5106.927, 5206.937, 5245.108), stdev = 28.865
  CI (99.9%): [5181.872, 5232.003] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5206.937 ± 25.065  ops/s
