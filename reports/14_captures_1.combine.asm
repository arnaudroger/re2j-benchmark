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
# Warmup Iteration   1: 5015.973 ops/s
# Warmup Iteration   2: 5336.116 ops/s
# Warmup Iteration   3: 5328.489 ops/s
# Warmup Iteration   4: 5303.556 ops/s
# Warmup Iteration   5: 5374.408 ops/s
# Warmup Iteration   6: 5404.847 ops/s
# Warmup Iteration   7: 5384.933 ops/s
# Warmup Iteration   8: 5380.053 ops/s
# Warmup Iteration   9: 5362.647 ops/s
# Warmup Iteration  10: 5385.958 ops/s
# Warmup Iteration  11: 5393.756 ops/s
# Warmup Iteration  12: 5388.228 ops/s
# Warmup Iteration  13: 5376.305 ops/s
# Warmup Iteration  14: 5361.519 ops/s
# Warmup Iteration  15: 5382.348 ops/s
# Warmup Iteration  16: 5404.532 ops/s
# Warmup Iteration  17: 5352.239 ops/s
# Warmup Iteration  18: 5354.600 ops/s
# Warmup Iteration  19: 5350.963 ops/s
# Warmup Iteration  20: 5400.380 ops/s
Iteration   1: 5402.696 ops/s
Iteration   2: 5385.377 ops/s
Iteration   3: 5376.426 ops/s
Iteration   4: 5344.177 ops/s
Iteration   5: 5376.906 ops/s
Iteration   6: 5384.968 ops/s
Iteration   7: 5378.929 ops/s
Iteration   8: 5383.063 ops/s
Iteration   9: 5340.102 ops/s
Iteration  10: 5381.702 ops/s
Iteration  11: 5388.844 ops/s
Iteration  12: 5376.759 ops/s
Iteration  13: 5380.722 ops/s
Iteration  14: 5322.948 ops/s
Iteration  15: 5387.855 ops/s
Iteration  16: 5382.907 ops/s
Iteration  17: 5381.213 ops/s
Iteration  18: 5372.514 ops/s
Iteration  19: 5349.574 ops/s
Iteration  20: 5385.234 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5374.146 ±(99.9%) 16.926 ops/s [Average]
  (min, avg, max) = (5322.948, 5374.146, 5402.696), stdev = 19.492
  CI (99.9%): [5357.219, 5391.072] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5374.146 ± 16.926  ops/s
