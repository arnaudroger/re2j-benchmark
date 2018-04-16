# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Warmup Iteration   1: 12410.721 ops/s
# Warmup Iteration   2: 12764.374 ops/s
# Warmup Iteration   3: 12870.807 ops/s
# Warmup Iteration   4: 12852.692 ops/s
# Warmup Iteration   5: 12952.960 ops/s
# Warmup Iteration   6: 9519.935 ops/s
# Warmup Iteration   7: 12730.164 ops/s
# Warmup Iteration   8: 12840.116 ops/s
# Warmup Iteration   9: 12918.349 ops/s
# Warmup Iteration  10: 13039.345 ops/s
# Warmup Iteration  11: 13014.319 ops/s
# Warmup Iteration  12: 12891.045 ops/s
# Warmup Iteration  13: 12995.698 ops/s
# Warmup Iteration  14: 13012.002 ops/s
# Warmup Iteration  15: 13005.537 ops/s
# Warmup Iteration  16: 12967.161 ops/s
# Warmup Iteration  17: 12930.577 ops/s
# Warmup Iteration  18: 13025.431 ops/s
# Warmup Iteration  19: 12969.042 ops/s
# Warmup Iteration  20: 12997.739 ops/s
Iteration   1: 13004.735 ops/s
Iteration   2: 12931.474 ops/s
Iteration   3: 13042.579 ops/s
Iteration   4: 12997.606 ops/s
Iteration   5: 13024.835 ops/s
Iteration   6: 13007.310 ops/s
Iteration   7: 12428.112 ops/s
Iteration   8: 12954.893 ops/s
Iteration   9: 13006.035 ops/s
Iteration  10: 10857.478 ops/s
Iteration  11: 12969.181 ops/s
Iteration  12: 12912.518 ops/s
Iteration  13: 13003.866 ops/s
Iteration  14: 10414.801 ops/s
Iteration  15: 10699.936 ops/s
Iteration  16: 12980.519 ops/s
Iteration  17: 12897.474 ops/s
Iteration  18: 13008.545 ops/s
Iteration  19: 12423.492 ops/s
Iteration  20: 13009.605 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  12578.750 ±(99.9%) 737.451 ops/s [Average]
  (min, avg, max) = (10414.801, 12578.750, 13042.579), stdev = 849.250
  CI (99.9%): [11841.298, 13316.201] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  12578.750 ± 737.451  ops/s
