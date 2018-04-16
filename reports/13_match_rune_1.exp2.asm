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
# Warmup Iteration   1: 24114.023 ops/s
# Warmup Iteration   2: 25423.515 ops/s
# Warmup Iteration   3: 25638.564 ops/s
# Warmup Iteration   4: 25660.148 ops/s
# Warmup Iteration   5: 25599.408 ops/s
# Warmup Iteration   6: 25327.836 ops/s
# Warmup Iteration   7: 25683.816 ops/s
# Warmup Iteration   8: 25677.148 ops/s
# Warmup Iteration   9: 25722.098 ops/s
# Warmup Iteration  10: 25663.341 ops/s
# Warmup Iteration  11: 25490.499 ops/s
# Warmup Iteration  12: 25678.729 ops/s
# Warmup Iteration  13: 25617.315 ops/s
# Warmup Iteration  14: 25705.372 ops/s
# Warmup Iteration  15: 25677.175 ops/s
# Warmup Iteration  16: 25488.180 ops/s
# Warmup Iteration  17: 24796.802 ops/s
# Warmup Iteration  18: 24779.560 ops/s
# Warmup Iteration  19: 25016.592 ops/s
# Warmup Iteration  20: 25691.397 ops/s
Iteration   1: 25527.369 ops/s
Iteration   2: 25740.434 ops/s
Iteration   3: 25711.580 ops/s
Iteration   4: 25720.655 ops/s
Iteration   5: 25525.264 ops/s
Iteration   6: 25474.004 ops/s
Iteration   7: 25602.749 ops/s
Iteration   8: 25697.513 ops/s
Iteration   9: 25720.085 ops/s
Iteration  10: 25709.093 ops/s
Iteration  11: 25553.441 ops/s
Iteration  12: 25603.081 ops/s
Iteration  13: 25624.536 ops/s
Iteration  14: 25725.531 ops/s
Iteration  15: 25667.530 ops/s
Iteration  16: 25510.798 ops/s
Iteration  17: 25739.650 ops/s
Iteration  18: 25695.619 ops/s
Iteration  19: 25627.927 ops/s
Iteration  20: 25687.320 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  25643.209 ±(99.9%) 74.557 ops/s [Average]
  (min, avg, max) = (25474.004, 25643.209, 25740.434), stdev = 85.860
  CI (99.9%): [25568.652, 25717.766] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  25643.209 ± 74.557  ops/s
