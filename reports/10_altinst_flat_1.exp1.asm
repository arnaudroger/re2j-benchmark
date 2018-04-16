# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Warmup Iteration   1: 17929.278 ops/s
# Warmup Iteration   2: 19049.394 ops/s
# Warmup Iteration   3: 19186.906 ops/s
# Warmup Iteration   4: 19414.462 ops/s
# Warmup Iteration   5: 19349.371 ops/s
# Warmup Iteration   6: 19492.556 ops/s
# Warmup Iteration   7: 19342.073 ops/s
# Warmup Iteration   8: 19428.159 ops/s
# Warmup Iteration   9: 19441.081 ops/s
# Warmup Iteration  10: 19397.737 ops/s
# Warmup Iteration  11: 18964.445 ops/s
# Warmup Iteration  12: 19350.254 ops/s
# Warmup Iteration  13: 19412.424 ops/s
# Warmup Iteration  14: 19453.886 ops/s
# Warmup Iteration  15: 19463.720 ops/s
# Warmup Iteration  16: 19356.822 ops/s
# Warmup Iteration  17: 18710.563 ops/s
# Warmup Iteration  18: 18807.725 ops/s
# Warmup Iteration  19: 18983.001 ops/s
# Warmup Iteration  20: 19131.203 ops/s
Iteration   1: 18852.905 ops/s
Iteration   2: 18978.472 ops/s
Iteration   3: 19129.172 ops/s
Iteration   4: 19090.005 ops/s
Iteration   5: 19119.805 ops/s
Iteration   6: 19063.391 ops/s
Iteration   7: 18973.178 ops/s
Iteration   8: 19103.246 ops/s
Iteration   9: 19113.293 ops/s
Iteration  10: 19094.519 ops/s
Iteration  11: 19063.087 ops/s
Iteration  12: 18964.666 ops/s
Iteration  13: 19098.018 ops/s
Iteration  14: 18970.575 ops/s
Iteration  15: 19071.015 ops/s
Iteration  16: 19096.574 ops/s
Iteration  17: 18955.297 ops/s
Iteration  18: 19114.717 ops/s
Iteration  19: 19077.884 ops/s
Iteration  20: 19081.111 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  19050.547 ±(99.9%) 64.609 ops/s [Average]
  (min, avg, max) = (18852.905, 19050.547, 19129.172), stdev = 74.404
  CI (99.9%): [18985.938, 19115.155] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  19050.547 ± 64.609  ops/s
