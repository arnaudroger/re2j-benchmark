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
# Warmup Iteration   1: 1942.507 ops/s
# Warmup Iteration   2: 1978.526 ops/s
# Warmup Iteration   3: 2132.115 ops/s
# Warmup Iteration   4: 2093.950 ops/s
# Warmup Iteration   5: 2132.439 ops/s
# Warmup Iteration   6: 2140.935 ops/s
# Warmup Iteration   7: 2041.841 ops/s
# Warmup Iteration   8: 2165.152 ops/s
# Warmup Iteration   9: 2166.904 ops/s
# Warmup Iteration  10: 2162.645 ops/s
# Warmup Iteration  11: 2145.568 ops/s
# Warmup Iteration  12: 2158.895 ops/s
# Warmup Iteration  13: 2159.464 ops/s
# Warmup Iteration  14: 2156.099 ops/s
# Warmup Iteration  15: 2151.727 ops/s
# Warmup Iteration  16: 2137.420 ops/s
# Warmup Iteration  17: 2124.675 ops/s
# Warmup Iteration  18: 2167.399 ops/s
# Warmup Iteration  19: 2158.345 ops/s
# Warmup Iteration  20: 2166.855 ops/s
Iteration   1: 2151.622 ops/s
Iteration   2: 2167.368 ops/s
Iteration   3: 2157.307 ops/s
Iteration   4: 2162.151 ops/s
Iteration   5: 2149.523 ops/s
Iteration   6: 2147.716 ops/s
Iteration   7: 2162.274 ops/s
Iteration   8: 2165.025 ops/s
Iteration   9: 2162.611 ops/s
Iteration  10: 2145.290 ops/s
Iteration  11: 2137.246 ops/s
Iteration  12: 2159.184 ops/s
Iteration  13: 2157.646 ops/s
Iteration  14: 2139.041 ops/s
Iteration  15: 2158.570 ops/s
Iteration  16: 2131.698 ops/s
Iteration  17: 2161.125 ops/s
Iteration  18: 2160.357 ops/s
Iteration  19: 2158.544 ops/s
Iteration  20: 2155.842 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2154.507 ±(99.9%) 8.532 ops/s [Average]
  (min, avg, max) = (2131.698, 2154.507, 2167.368), stdev = 9.826
  CI (99.9%): [2145.975, 2163.039] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score   Error  Units
Re2jFindRegex.testCombine  thrpt   20  2154.507 ± 8.532  ops/s
