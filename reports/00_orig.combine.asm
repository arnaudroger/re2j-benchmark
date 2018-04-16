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
# Warmup Iteration   1: 1808.514 ops/s
# Warmup Iteration   2: 1921.446 ops/s
# Warmup Iteration   3: 1926.898 ops/s
# Warmup Iteration   4: 1915.674 ops/s
# Warmup Iteration   5: 1929.727 ops/s
# Warmup Iteration   6: 1918.556 ops/s
# Warmup Iteration   7: 1926.256 ops/s
# Warmup Iteration   8: 1908.593 ops/s
# Warmup Iteration   9: 1910.457 ops/s
# Warmup Iteration  10: 1924.376 ops/s
# Warmup Iteration  11: 1925.234 ops/s
# Warmup Iteration  12: 1918.597 ops/s
# Warmup Iteration  13: 1932.874 ops/s
# Warmup Iteration  14: 1919.502 ops/s
# Warmup Iteration  15: 1937.179 ops/s
# Warmup Iteration  16: 1928.245 ops/s
# Warmup Iteration  17: 1897.623 ops/s
# Warmup Iteration  18: 1894.831 ops/s
# Warmup Iteration  19: 1900.488 ops/s
# Warmup Iteration  20: 1913.839 ops/s
Iteration   1: 1929.550 ops/s
Iteration   2: 1929.464 ops/s
Iteration   3: 1931.086 ops/s
Iteration   4: 1919.097 ops/s
Iteration   5: 1932.773 ops/s
Iteration   6: 1935.108 ops/s
Iteration   7: 1941.325 ops/s
Iteration   8: 1941.946 ops/s
Iteration   9: 1929.639 ops/s
Iteration  10: 1943.792 ops/s
Iteration  11: 1940.245 ops/s
Iteration  12: 1883.543 ops/s
Iteration  13: 1930.586 ops/s
Iteration  14: 1918.797 ops/s
Iteration  15: 1928.262 ops/s
Iteration  16: 1938.580 ops/s
Iteration  17: 1934.370 ops/s
Iteration  18: 1933.836 ops/s
Iteration  19: 1933.891 ops/s
Iteration  20: 1949.783 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  1931.284 ±(99.9%) 11.767 ops/s [Average]
  (min, avg, max) = (1883.543, 1931.284, 1949.783), stdev = 13.551
  CI (99.9%): [1919.517, 1943.050] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  1931.284 ± 11.767  ops/s
