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
# Warmup Iteration   1: 17287.329 ops/s
# Warmup Iteration   2: 16368.801 ops/s
# Warmup Iteration   3: 18087.918 ops/s
# Warmup Iteration   4: 18343.710 ops/s
# Warmup Iteration   5: 18183.186 ops/s
# Warmup Iteration   6: 16545.173 ops/s
# Warmup Iteration   7: 18463.617 ops/s
# Warmup Iteration   8: 18368.205 ops/s
# Warmup Iteration   9: 18436.335 ops/s
# Warmup Iteration  10: 18506.665 ops/s
# Warmup Iteration  11: 18413.025 ops/s
# Warmup Iteration  12: 18477.157 ops/s
# Warmup Iteration  13: 18358.885 ops/s
# Warmup Iteration  14: 18388.723 ops/s
# Warmup Iteration  15: 18511.355 ops/s
# Warmup Iteration  16: 18517.443 ops/s
# Warmup Iteration  17: 18384.730 ops/s
# Warmup Iteration  18: 16508.693 ops/s
# Warmup Iteration  19: 18484.834 ops/s
# Warmup Iteration  20: 18340.351 ops/s
Iteration   1: 18378.137 ops/s
Iteration   2: 17952.045 ops/s
Iteration   3: 18238.276 ops/s
Iteration   4: 18351.828 ops/s
Iteration   5: 18359.153 ops/s
Iteration   6: 18392.120 ops/s
Iteration   7: 18338.693 ops/s
Iteration   8: 18250.971 ops/s
Iteration   9: 18346.269 ops/s
Iteration  10: 18319.738 ops/s
Iteration  11: 18376.376 ops/s
Iteration  12: 18330.893 ops/s
Iteration  13: 18244.039 ops/s
Iteration  14: 18385.354 ops/s
Iteration  15: 18381.797 ops/s
Iteration  16: 18376.203 ops/s
Iteration  17: 18314.795 ops/s
Iteration  18: 16378.389 ops/s
Iteration  19: 18349.136 ops/s
Iteration  20: 18348.309 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  18220.626 ±(99.9%) 385.949 ops/s [Average]
  (min, avg, max) = (16378.389, 18220.626, 18392.120), stdev = 444.460
  CI (99.9%): [17834.677, 18606.575] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  18220.626 ± 385.949  ops/s
