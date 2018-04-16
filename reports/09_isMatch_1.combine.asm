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
# Warmup Iteration   1: 5162.307 ops/s
# Warmup Iteration   2: 5244.595 ops/s
# Warmup Iteration   3: 5435.596 ops/s
# Warmup Iteration   4: 5454.564 ops/s
# Warmup Iteration   5: 5449.116 ops/s
# Warmup Iteration   6: 5521.342 ops/s
# Warmup Iteration   7: 5510.185 ops/s
# Warmup Iteration   8: 5499.033 ops/s
# Warmup Iteration   9: 5506.776 ops/s
# Warmup Iteration  10: 5471.858 ops/s
# Warmup Iteration  11: 5485.924 ops/s
# Warmup Iteration  12: 5484.833 ops/s
# Warmup Iteration  13: 5497.816 ops/s
# Warmup Iteration  14: 5426.219 ops/s
# Warmup Iteration  15: 5445.841 ops/s
# Warmup Iteration  16: 5521.287 ops/s
# Warmup Iteration  17: 5483.766 ops/s
# Warmup Iteration  18: 5383.641 ops/s
# Warmup Iteration  19: 5525.814 ops/s
# Warmup Iteration  20: 5513.777 ops/s
Iteration   1: 5520.666 ops/s
Iteration   2: 5486.200 ops/s
Iteration   3: 5532.819 ops/s
Iteration   4: 5526.759 ops/s
Iteration   5: 5503.835 ops/s
Iteration   6: 5506.215 ops/s
Iteration   7: 5484.037 ops/s
Iteration   8: 5528.493 ops/s
Iteration   9: 5499.256 ops/s
Iteration  10: 5483.025 ops/s
Iteration  11: 5511.832 ops/s
Iteration  12: 5491.694 ops/s
Iteration  13: 5525.758 ops/s
Iteration  14: 5531.919 ops/s
Iteration  15: 5522.903 ops/s
Iteration  16: 5521.037 ops/s
Iteration  17: 5475.220 ops/s
Iteration  18: 5537.287 ops/s
Iteration  19: 5529.186 ops/s
Iteration  20: 5533.784 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5512.596 ±(99.9%) 17.255 ops/s [Average]
  (min, avg, max) = (5475.220, 5512.596, 5537.287), stdev = 19.871
  CI (99.9%): [5495.341, 5529.851] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5512.596 ± 17.255  ops/s
