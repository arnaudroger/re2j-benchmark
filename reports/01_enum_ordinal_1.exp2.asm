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
# Warmup Iteration   1: 3214.611 ops/s
# Warmup Iteration   2: 3303.906 ops/s
# Warmup Iteration   3: 3321.085 ops/s
# Warmup Iteration   4: 3315.891 ops/s
# Warmup Iteration   5: 3287.661 ops/s
# Warmup Iteration   6: 3299.385 ops/s
# Warmup Iteration   7: 3218.638 ops/s
# Warmup Iteration   8: 3279.722 ops/s
# Warmup Iteration   9: 3274.481 ops/s
# Warmup Iteration  10: 3255.742 ops/s
# Warmup Iteration  11: 3275.830 ops/s
# Warmup Iteration  12: 3273.576 ops/s
# Warmup Iteration  13: 3279.975 ops/s
# Warmup Iteration  14: 3277.823 ops/s
# Warmup Iteration  15: 3304.294 ops/s
# Warmup Iteration  16: 3260.921 ops/s
# Warmup Iteration  17: 3297.546 ops/s
# Warmup Iteration  18: 3296.698 ops/s
# Warmup Iteration  19: 3292.658 ops/s
# Warmup Iteration  20: 3277.088 ops/s
Iteration   1: 3296.613 ops/s
Iteration   2: 3300.770 ops/s
Iteration   3: 3320.283 ops/s
Iteration   4: 3313.896 ops/s
Iteration   5: 3293.587 ops/s
Iteration   6: 3319.555 ops/s
Iteration   7: 3322.431 ops/s
Iteration   8: 3321.069 ops/s
Iteration   9: 3307.020 ops/s
Iteration  10: 3288.148 ops/s
Iteration  11: 3313.393 ops/s
Iteration  12: 3316.358 ops/s
Iteration  13: 3317.248 ops/s
Iteration  14: 3315.309 ops/s
Iteration  15: 3301.833 ops/s
Iteration  16: 3297.736 ops/s
Iteration  17: 3276.408 ops/s
Iteration  18: 3274.338 ops/s
Iteration  19: 3270.802 ops/s
Iteration  20: 3248.593 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  3300.769 ±(99.9%) 17.665 ops/s [Average]
  (min, avg, max) = (3248.593, 3300.769, 3322.431), stdev = 20.343
  CI (99.9%): [3283.105, 3318.434] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  3300.769 ± 17.665  ops/s
