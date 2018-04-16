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
# Warmup Iteration   1: 2032.793 ops/s
# Warmup Iteration   2: 2124.185 ops/s
# Warmup Iteration   3: 2128.531 ops/s
# Warmup Iteration   4: 2142.554 ops/s
# Warmup Iteration   5: 2127.220 ops/s
# Warmup Iteration   6: 2142.593 ops/s
# Warmup Iteration   7: 2140.614 ops/s
# Warmup Iteration   8: 2128.073 ops/s
# Warmup Iteration   9: 2139.671 ops/s
# Warmup Iteration  10: 2142.218 ops/s
# Warmup Iteration  11: 2132.716 ops/s
# Warmup Iteration  12: 2138.738 ops/s
# Warmup Iteration  13: 2109.178 ops/s
# Warmup Iteration  14: 2141.398 ops/s
# Warmup Iteration  15: 2141.488 ops/s
# Warmup Iteration  16: 2141.609 ops/s
# Warmup Iteration  17: 2088.995 ops/s
# Warmup Iteration  18: 2119.821 ops/s
# Warmup Iteration  19: 2138.106 ops/s
# Warmup Iteration  20: 2131.860 ops/s
Iteration   1: 2136.413 ops/s
Iteration   2: 2134.346 ops/s
Iteration   3: 2114.938 ops/s
Iteration   4: 2139.524 ops/s
Iteration   5: 2139.731 ops/s
Iteration   6: 2139.626 ops/s
Iteration   7: 2135.523 ops/s
Iteration   8: 2115.853 ops/s
Iteration   9: 2130.822 ops/s
Iteration  10: 2122.077 ops/s
Iteration  11: 2121.431 ops/s
Iteration  12: 2126.114 ops/s
Iteration  13: 2109.060 ops/s
Iteration  14: 2123.583 ops/s
Iteration  15: 2141.755 ops/s
Iteration  16: 2129.955 ops/s
Iteration  17: 2118.455 ops/s
Iteration  18: 2123.841 ops/s
Iteration  19: 2141.510 ops/s
Iteration  20: 2130.622 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2128.759 ±(99.9%) 8.542 ops/s [Average]
  (min, avg, max) = (2109.060, 2128.759, 2141.755), stdev = 9.837
  CI (99.9%): [2120.217, 2137.301] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score   Error  Units
Re2jFindRegex.testCombine  thrpt   20  2128.759 ± 8.542  ops/s
