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
# Warmup Iteration   1: 3449.767 ops/s
# Warmup Iteration   2: 3701.607 ops/s
# Warmup Iteration   3: 3746.455 ops/s
# Warmup Iteration   4: 3739.120 ops/s
# Warmup Iteration   5: 3753.842 ops/s
# Warmup Iteration   6: 3744.415 ops/s
# Warmup Iteration   7: 3614.534 ops/s
# Warmup Iteration   8: 3743.656 ops/s
# Warmup Iteration   9: 3742.962 ops/s
# Warmup Iteration  10: 3664.050 ops/s
# Warmup Iteration  11: 3740.862 ops/s
# Warmup Iteration  12: 3738.568 ops/s
# Warmup Iteration  13: 3767.075 ops/s
# Warmup Iteration  14: 3762.396 ops/s
# Warmup Iteration  15: 3708.565 ops/s
# Warmup Iteration  16: 3694.356 ops/s
# Warmup Iteration  17: 3722.000 ops/s
# Warmup Iteration  18: 3693.486 ops/s
# Warmup Iteration  19: 3738.176 ops/s
# Warmup Iteration  20: 3742.097 ops/s
Iteration   1: 3730.863 ops/s
Iteration   2: 3698.790 ops/s
Iteration   3: 3733.302 ops/s
Iteration   4: 3732.755 ops/s
Iteration   5: 3720.393 ops/s
Iteration   6: 3737.099 ops/s
Iteration   7: 3716.844 ops/s
Iteration   8: 3744.488 ops/s
Iteration   9: 3740.788 ops/s
Iteration  10: 3750.088 ops/s
Iteration  11: 3739.934 ops/s
Iteration  12: 3731.205 ops/s
Iteration  13: 3760.420 ops/s
Iteration  14: 3766.887 ops/s
Iteration  15: 3768.385 ops/s
Iteration  16: 3752.125 ops/s
Iteration  17: 3734.884 ops/s
Iteration  18: 3765.127 ops/s
Iteration  19: 3758.835 ops/s
Iteration  20: 3762.090 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  3742.265 ±(99.9%) 16.059 ops/s [Average]
  (min, avg, max) = (3698.790, 3742.265, 3768.385), stdev = 18.494
  CI (99.9%): [3726.206, 3758.324] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  3742.265 ± 16.059  ops/s
