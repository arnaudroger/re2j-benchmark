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
# Warmup Iteration   1: 21648.931 ops/s
# Warmup Iteration   2: 22683.787 ops/s
# Warmup Iteration   3: 22487.145 ops/s
# Warmup Iteration   4: 22396.133 ops/s
# Warmup Iteration   5: 21822.525 ops/s
# Warmup Iteration   6: 22378.613 ops/s
# Warmup Iteration   7: 22667.938 ops/s
# Warmup Iteration   8: 22943.954 ops/s
# Warmup Iteration   9: 22789.978 ops/s
# Warmup Iteration  10: 22506.634 ops/s
# Warmup Iteration  11: 22786.500 ops/s
# Warmup Iteration  12: 22748.919 ops/s
# Warmup Iteration  13: 22813.801 ops/s
# Warmup Iteration  14: 22789.066 ops/s
# Warmup Iteration  15: 22985.443 ops/s
# Warmup Iteration  16: 22962.021 ops/s
# Warmup Iteration  17: 22950.213 ops/s
# Warmup Iteration  18: 22931.624 ops/s
# Warmup Iteration  19: 22856.455 ops/s
# Warmup Iteration  20: 22770.602 ops/s
Iteration   1: 22845.300 ops/s
Iteration   2: 22880.025 ops/s
Iteration   3: 22754.511 ops/s
Iteration   4: 22898.699 ops/s
Iteration   5: 22633.557 ops/s
Iteration   6: 22744.691 ops/s
Iteration   7: 22790.671 ops/s
Iteration   8: 21941.744 ops/s
Iteration   9: 22849.601 ops/s
Iteration  10: 22751.014 ops/s
Iteration  11: 22901.275 ops/s
Iteration  12: 22897.060 ops/s
Iteration  13: 22918.264 ops/s
Iteration  14: 22860.645 ops/s
Iteration  15: 22828.106 ops/s
Iteration  16: 22872.712 ops/s
Iteration  17: 22961.317 ops/s
Iteration  18: 22961.882 ops/s
Iteration  19: 22930.759 ops/s
Iteration  20: 22876.002 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  22804.892 ±(99.9%) 190.104 ops/s [Average]
  (min, avg, max) = (21941.744, 22804.892, 22961.882), stdev = 218.924
  CI (99.9%): [22614.788, 22994.995] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  22804.892 ± 190.104  ops/s
