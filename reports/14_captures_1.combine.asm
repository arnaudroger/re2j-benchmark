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
# Warmup Iteration   1: 11226.805 ops/s
# Warmup Iteration   2: 11754.294 ops/s
# Warmup Iteration   3: 11791.189 ops/s
# Warmup Iteration   4: 11767.847 ops/s
# Warmup Iteration   5: 11702.910 ops/s
# Warmup Iteration   6: 11795.917 ops/s
# Warmup Iteration   7: 11777.691 ops/s
# Warmup Iteration   8: 11830.659 ops/s
# Warmup Iteration   9: 11753.406 ops/s
# Warmup Iteration  10: 11751.257 ops/s
# Warmup Iteration  11: 11858.012 ops/s
# Warmup Iteration  12: 11845.617 ops/s
# Warmup Iteration  13: 11846.440 ops/s
# Warmup Iteration  14: 11840.272 ops/s
# Warmup Iteration  15: 11734.443 ops/s
# Warmup Iteration  16: 11842.729 ops/s
# Warmup Iteration  17: 11856.850 ops/s
# Warmup Iteration  18: 11852.202 ops/s
# Warmup Iteration  19: 11842.143 ops/s
# Warmup Iteration  20: 11765.559 ops/s
Iteration   1: 11854.306 ops/s
Iteration   2: 11852.741 ops/s
Iteration   3: 11765.365 ops/s
Iteration   4: 11751.027 ops/s
Iteration   5: 11687.844 ops/s
Iteration   6: 11786.058 ops/s
Iteration   7: 11784.599 ops/s
Iteration   8: 11786.018 ops/s
Iteration   9: 11777.727 ops/s
Iteration  10: 11673.128 ops/s
Iteration  11: 11715.951 ops/s
Iteration  12: 11707.525 ops/s
Iteration  13: 11693.774 ops/s
Iteration  14: 11695.716 ops/s
Iteration  15: 11628.048 ops/s
Iteration  16: 11704.579 ops/s
Iteration  17: 11699.012 ops/s
Iteration  18: 11716.580 ops/s
Iteration  19: 11405.427 ops/s
Iteration  20: 11738.914 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  11721.217 ±(99.9%) 81.658 ops/s [Average]
  (min, avg, max) = (11405.427, 11721.217, 11854.306), stdev = 94.037
  CI (99.9%): [11639.559, 11802.875] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt      Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  11721.217 ± 81.658  ops/s
