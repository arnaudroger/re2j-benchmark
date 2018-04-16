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
# Warmup Iteration   1: 25648.598 ops/s
# Warmup Iteration   2: 27082.119 ops/s
# Warmup Iteration   3: 27041.524 ops/s
# Warmup Iteration   4: 26352.021 ops/s
# Warmup Iteration   5: 27217.789 ops/s
# Warmup Iteration   6: 27151.507 ops/s
# Warmup Iteration   7: 27329.423 ops/s
# Warmup Iteration   8: 27205.538 ops/s
# Warmup Iteration   9: 27381.261 ops/s
# Warmup Iteration  10: 25646.502 ops/s
# Warmup Iteration  11: 27278.369 ops/s
# Warmup Iteration  12: 27123.677 ops/s
# Warmup Iteration  13: 27261.927 ops/s
# Warmup Iteration  14: 27346.158 ops/s
# Warmup Iteration  15: 27359.875 ops/s
# Warmup Iteration  16: 27251.974 ops/s
# Warmup Iteration  17: 27325.650 ops/s
# Warmup Iteration  18: 27130.972 ops/s
# Warmup Iteration  19: 27243.214 ops/s
# Warmup Iteration  20: 27182.004 ops/s
Iteration   1: 27036.068 ops/s
Iteration   2: 27182.847 ops/s
Iteration   3: 27155.671 ops/s
Iteration   4: 27157.666 ops/s
Iteration   5: 27243.920 ops/s
Iteration   6: 27140.270 ops/s
Iteration   7: 27132.933 ops/s
Iteration   8: 26382.041 ops/s
Iteration   9: 27328.185 ops/s
Iteration  10: 27272.908 ops/s
Iteration  11: 27191.603 ops/s
Iteration  12: 27366.324 ops/s
Iteration  13: 27342.729 ops/s
Iteration  14: 27371.913 ops/s
Iteration  15: 27368.582 ops/s
Iteration  16: 27086.393 ops/s
Iteration  17: 27349.175 ops/s
Iteration  18: 27291.113 ops/s
Iteration  19: 27408.919 ops/s
Iteration  20: 27396.012 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  27210.263 ±(99.9%) 195.314 ops/s [Average]
  (min, avg, max) = (26382.041, 27210.263, 27408.919), stdev = 224.924
  CI (99.9%): [27014.949, 27405.577] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  27210.263 ± 195.314  ops/s
