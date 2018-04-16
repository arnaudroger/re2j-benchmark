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
# Warmup Iteration   1: 19167.329 ops/s
# Warmup Iteration   2: 20418.723 ops/s
# Warmup Iteration   3: 20489.059 ops/s
# Warmup Iteration   4: 20908.534 ops/s
# Warmup Iteration   5: 20960.422 ops/s
# Warmup Iteration   6: 20545.635 ops/s
# Warmup Iteration   7: 20921.429 ops/s
# Warmup Iteration   8: 21037.818 ops/s
# Warmup Iteration   9: 21048.712 ops/s
# Warmup Iteration  10: 21007.006 ops/s
# Warmup Iteration  11: 20846.830 ops/s
# Warmup Iteration  12: 21021.588 ops/s
# Warmup Iteration  13: 21023.223 ops/s
# Warmup Iteration  14: 21046.763 ops/s
# Warmup Iteration  15: 20918.871 ops/s
# Warmup Iteration  16: 20777.916 ops/s
# Warmup Iteration  17: 21082.052 ops/s
# Warmup Iteration  18: 21049.348 ops/s
# Warmup Iteration  19: 21058.309 ops/s
# Warmup Iteration  20: 21031.344 ops/s
Iteration   1: 20882.354 ops/s
Iteration   2: 21033.181 ops/s
Iteration   3: 20973.053 ops/s
Iteration   4: 21050.668 ops/s
Iteration   5: 21005.909 ops/s
Iteration   6: 20878.475 ops/s
Iteration   7: 21057.355 ops/s
Iteration   8: 21041.286 ops/s
Iteration   9: 20896.801 ops/s
Iteration  10: 20995.229 ops/s
Iteration  11: 20647.781 ops/s
Iteration  12: 20644.883 ops/s
Iteration  13: 20650.145 ops/s
Iteration  14: 20654.186 ops/s
Iteration  15: 20588.378 ops/s
Iteration  16: 20500.473 ops/s
Iteration  17: 20639.468 ops/s
Iteration  18: 20630.329 ops/s
Iteration  19: 20643.989 ops/s
Iteration  20: 21018.828 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20821.639 ±(99.9%) 168.722 ops/s [Average]
  (min, avg, max) = (20500.473, 20821.639, 21057.355), stdev = 194.300
  CI (99.9%): [20652.917, 20990.360] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  20821.639 ± 168.722  ops/s
