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
# Warmup Iteration   1: 23653.400 ops/s
# Warmup Iteration   2: 26102.028 ops/s
# Warmup Iteration   3: 25807.324 ops/s
# Warmup Iteration   4: 26255.017 ops/s
# Warmup Iteration   5: 26104.737 ops/s
# Warmup Iteration   6: 26185.172 ops/s
# Warmup Iteration   7: 26378.114 ops/s
# Warmup Iteration   8: 26335.390 ops/s
# Warmup Iteration   9: 26303.287 ops/s
# Warmup Iteration  10: 26138.810 ops/s
# Warmup Iteration  11: 26323.444 ops/s
# Warmup Iteration  12: 26198.976 ops/s
# Warmup Iteration  13: 26007.530 ops/s
# Warmup Iteration  14: 26068.965 ops/s
# Warmup Iteration  15: 25920.278 ops/s
# Warmup Iteration  16: 26041.267 ops/s
# Warmup Iteration  17: 25531.144 ops/s
# Warmup Iteration  18: 25485.951 ops/s
# Warmup Iteration  19: 25692.448 ops/s
# Warmup Iteration  20: 25785.019 ops/s
Iteration   1: 26014.792 ops/s
Iteration   2: 25991.997 ops/s
Iteration   3: 25973.816 ops/s
Iteration   4: 25869.967 ops/s
Iteration   5: 25734.155 ops/s
Iteration   6: 25876.913 ops/s
Iteration   7: 25938.490 ops/s
Iteration   8: 25891.403 ops/s
Iteration   9: 25916.200 ops/s
Iteration  10: 25777.573 ops/s
Iteration  11: 25943.437 ops/s
Iteration  12: 25865.255 ops/s
Iteration  13: 25940.147 ops/s
Iteration  14: 25869.123 ops/s
Iteration  15: 25816.612 ops/s
Iteration  16: 26004.666 ops/s
Iteration  17: 25934.575 ops/s
Iteration  18: 25897.034 ops/s
Iteration  19: 25864.046 ops/s
Iteration  20: 25798.780 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  25895.949 ±(99.9%) 65.716 ops/s [Average]
  (min, avg, max) = (25734.155, 25895.949, 26014.792), stdev = 75.678
  CI (99.9%): [25830.233, 25961.665] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  25895.949 ± 65.716  ops/s
