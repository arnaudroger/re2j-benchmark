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
# Warmup Iteration   1: 6671.949 ops/s
# Warmup Iteration   2: 6998.708 ops/s
# Warmup Iteration   3: 7060.100 ops/s
# Warmup Iteration   4: 6822.474 ops/s
# Warmup Iteration   5: 6990.350 ops/s
# Warmup Iteration   6: 6784.835 ops/s
# Warmup Iteration   7: 6992.804 ops/s
# Warmup Iteration   8: 7034.436 ops/s
# Warmup Iteration   9: 7017.339 ops/s
# Warmup Iteration  10: 6994.835 ops/s
# Warmup Iteration  11: 6908.528 ops/s
# Warmup Iteration  12: 7030.931 ops/s
# Warmup Iteration  13: 7082.732 ops/s
# Warmup Iteration  14: 7036.365 ops/s
# Warmup Iteration  15: 7068.759 ops/s
# Warmup Iteration  16: 7121.453 ops/s
# Warmup Iteration  17: 7014.491 ops/s
# Warmup Iteration  18: 7012.067 ops/s
# Warmup Iteration  19: 6966.807 ops/s
# Warmup Iteration  20: 7125.202 ops/s
Iteration   1: 7111.542 ops/s
Iteration   2: 7118.652 ops/s
Iteration   3: 7063.563 ops/s
Iteration   4: 7012.618 ops/s
Iteration   5: 7071.661 ops/s
Iteration   6: 7073.763 ops/s
Iteration   7: 7007.529 ops/s
Iteration   8: 7097.774 ops/s
Iteration   9: 7053.273 ops/s
Iteration  10: 7097.673 ops/s
Iteration  11: 7106.854 ops/s
Iteration  12: 7097.543 ops/s
Iteration  13: 7093.118 ops/s
Iteration  14: 7041.269 ops/s
Iteration  15: 7108.758 ops/s
Iteration  16: 7092.793 ops/s
Iteration  17: 7088.129 ops/s
Iteration  18: 7082.958 ops/s
Iteration  19: 7031.559 ops/s
Iteration  20: 7097.928 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  7077.448 ±(99.9%) 28.388 ops/s [Average]
  (min, avg, max) = (7007.529, 7077.448, 7118.652), stdev = 32.692
  CI (99.9%): [7049.059, 7105.836] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  7077.448 ± 28.388  ops/s
