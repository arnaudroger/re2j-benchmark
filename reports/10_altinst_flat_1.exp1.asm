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
# Warmup Iteration   1: 17977.980 ops/s
# Warmup Iteration   2: 19004.317 ops/s
# Warmup Iteration   3: 19088.791 ops/s
# Warmup Iteration   4: 18954.533 ops/s
# Warmup Iteration   5: 18960.818 ops/s
# Warmup Iteration   6: 19273.683 ops/s
# Warmup Iteration   7: 19188.433 ops/s
# Warmup Iteration   8: 19223.147 ops/s
# Warmup Iteration   9: 19237.540 ops/s
# Warmup Iteration  10: 19125.279 ops/s
# Warmup Iteration  11: 18754.792 ops/s
# Warmup Iteration  12: 18654.665 ops/s
# Warmup Iteration  13: 18657.906 ops/s
# Warmup Iteration  14: 19159.903 ops/s
# Warmup Iteration  15: 19143.912 ops/s
# Warmup Iteration  16: 19193.112 ops/s
# Warmup Iteration  17: 19261.051 ops/s
# Warmup Iteration  18: 19256.325 ops/s
# Warmup Iteration  19: 18890.793 ops/s
# Warmup Iteration  20: 18770.683 ops/s
Iteration   1: 18875.887 ops/s
Iteration   2: 18908.671 ops/s
Iteration   3: 18905.394 ops/s
Iteration   4: 18850.877 ops/s
Iteration   5: 18777.836 ops/s
Iteration   6: 18851.824 ops/s
Iteration   7: 18902.619 ops/s
Iteration   8: 18911.357 ops/s
Iteration   9: 18847.907 ops/s
Iteration  10: 18713.508 ops/s
Iteration  11: 18880.204 ops/s
Iteration  12: 18897.929 ops/s
Iteration  13: 18878.694 ops/s
Iteration  14: 18881.763 ops/s
Iteration  15: 18766.966 ops/s
Iteration  16: 18877.218 ops/s
Iteration  17: 18903.711 ops/s
Iteration  18: 18882.585 ops/s
Iteration  19: 18884.833 ops/s
Iteration  20: 18751.434 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  18857.561 ±(99.9%) 50.386 ops/s [Average]
  (min, avg, max) = (18713.508, 18857.561, 18911.357), stdev = 58.024
  CI (99.9%): [18807.175, 18907.947] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  18857.561 ± 50.386  ops/s
