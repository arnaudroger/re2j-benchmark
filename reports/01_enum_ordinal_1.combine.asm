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
# Warmup Iteration   1: 1993.410 ops/s
# Warmup Iteration   2: 2089.222 ops/s
# Warmup Iteration   3: 2048.072 ops/s
# Warmup Iteration   4: 2092.712 ops/s
# Warmup Iteration   5: 2078.410 ops/s
# Warmup Iteration   6: 2081.098 ops/s
# Warmup Iteration   7: 2091.620 ops/s
# Warmup Iteration   8: 2091.476 ops/s
# Warmup Iteration   9: 2088.131 ops/s
# Warmup Iteration  10: 2074.876 ops/s
# Warmup Iteration  11: 2077.936 ops/s
# Warmup Iteration  12: 2084.375 ops/s
# Warmup Iteration  13: 2085.420 ops/s
# Warmup Iteration  14: 2082.427 ops/s
# Warmup Iteration  15: 2070.676 ops/s
# Warmup Iteration  16: 2085.232 ops/s
# Warmup Iteration  17: 2095.008 ops/s
# Warmup Iteration  18: 2087.078 ops/s
# Warmup Iteration  19: 2088.984 ops/s
# Warmup Iteration  20: 2075.901 ops/s
Iteration   1: 2090.653 ops/s
Iteration   2: 2090.388 ops/s
Iteration   3: 2083.485 ops/s
Iteration   4: 2088.773 ops/s
Iteration   5: 2076.689 ops/s
Iteration   6: 2088.127 ops/s
Iteration   7: 2087.387 ops/s
Iteration   8: 2092.532 ops/s
Iteration   9: 2083.764 ops/s
Iteration  10: 2078.416 ops/s
Iteration  11: 2096.644 ops/s
Iteration  12: 2094.213 ops/s
Iteration  13: 2099.052 ops/s
Iteration  14: 2098.901 ops/s
Iteration  15: 2083.402 ops/s
Iteration  16: 2113.642 ops/s
Iteration  17: 2111.009 ops/s
Iteration  18: 2112.568 ops/s
Iteration  19: 2108.543 ops/s
Iteration  20: 2097.767 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2093.798 ±(99.9%) 9.561 ops/s [Average]
  (min, avg, max) = (2076.689, 2093.798, 2113.642), stdev = 11.011
  CI (99.9%): [2084.237, 2103.359] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score   Error  Units
Re2jFindRegex.testCombine  thrpt   20  2093.798 ± 9.561  ops/s
