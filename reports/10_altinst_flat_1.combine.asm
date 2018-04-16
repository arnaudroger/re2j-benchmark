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
# Warmup Iteration   1: 5964.097 ops/s
# Warmup Iteration   2: 6524.055 ops/s
# Warmup Iteration   3: 6569.517 ops/s
# Warmup Iteration   4: 5663.425 ops/s
# Warmup Iteration   5: 5489.619 ops/s
# Warmup Iteration   6: 6556.125 ops/s
# Warmup Iteration   7: 6571.190 ops/s
# Warmup Iteration   8: 6063.025 ops/s
# Warmup Iteration   9: 6586.817 ops/s
# Warmup Iteration  10: 6592.606 ops/s
# Warmup Iteration  11: 6565.634 ops/s
# Warmup Iteration  12: 6581.420 ops/s
# Warmup Iteration  13: 6589.710 ops/s
# Warmup Iteration  14: 6527.142 ops/s
# Warmup Iteration  15: 6595.838 ops/s
# Warmup Iteration  16: 5971.612 ops/s
# Warmup Iteration  17: 6367.823 ops/s
# Warmup Iteration  18: 6438.166 ops/s
# Warmup Iteration  19: 6471.820 ops/s
# Warmup Iteration  20: 6471.794 ops/s
Iteration   1: 6579.039 ops/s
Iteration   2: 6320.555 ops/s
Iteration   3: 6576.965 ops/s
Iteration   4: 5623.788 ops/s
Iteration   5: 6491.903 ops/s
Iteration   6: 6523.058 ops/s
Iteration   7: 6513.141 ops/s
Iteration   8: 5657.774 ops/s
Iteration   9: 6577.533 ops/s
Iteration  10: 6602.073 ops/s
Iteration  11: 6587.644 ops/s
Iteration  12: 6588.347 ops/s
Iteration  13: 6597.279 ops/s
Iteration  14: 6558.790 ops/s
Iteration  15: 6601.095 ops/s
Iteration  16: 5634.410 ops/s
Iteration  17: 5286.978 ops/s
Iteration  18: 6589.773 ops/s
Iteration  19: 6583.133 ops/s
Iteration  20: 6070.282 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  6328.178 ±(99.9%) 367.718 ops/s [Average]
  (min, avg, max) = (5286.978, 6328.178, 6602.073), stdev = 423.465
  CI (99.9%): [5960.460, 6695.896] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine  thrpt   20  6328.178 ± 367.718  ops/s
