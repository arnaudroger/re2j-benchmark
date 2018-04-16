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
# Warmup Iteration   1: 24799.778 ops/s
# Warmup Iteration   2: 26430.450 ops/s
# Warmup Iteration   3: 26494.477 ops/s
# Warmup Iteration   4: 26468.974 ops/s
# Warmup Iteration   5: 26457.203 ops/s
# Warmup Iteration   6: 26200.116 ops/s
# Warmup Iteration   7: 26578.293 ops/s
# Warmup Iteration   8: 26399.547 ops/s
# Warmup Iteration   9: 26566.411 ops/s
# Warmup Iteration  10: 26525.777 ops/s
# Warmup Iteration  11: 26351.170 ops/s
# Warmup Iteration  12: 26522.568 ops/s
# Warmup Iteration  13: 26578.011 ops/s
# Warmup Iteration  14: 26668.915 ops/s
# Warmup Iteration  15: 26653.236 ops/s
# Warmup Iteration  16: 26433.122 ops/s
# Warmup Iteration  17: 26648.844 ops/s
# Warmup Iteration  18: 26529.623 ops/s
# Warmup Iteration  19: 25924.089 ops/s
# Warmup Iteration  20: 26275.006 ops/s
Iteration   1: 26090.890 ops/s
Iteration   2: 26283.768 ops/s
Iteration   3: 26280.627 ops/s
Iteration   4: 26248.124 ops/s
Iteration   5: 25988.595 ops/s
Iteration   6: 26191.237 ops/s
Iteration   7: 26361.782 ops/s
Iteration   8: 26336.051 ops/s
Iteration   9: 26367.273 ops/s
Iteration  10: 26237.945 ops/s
Iteration  11: 26113.877 ops/s
Iteration  12: 26273.906 ops/s
Iteration  13: 26358.833 ops/s
Iteration  14: 26291.310 ops/s
Iteration  15: 26341.447 ops/s
Iteration  16: 26161.646 ops/s
Iteration  17: 26406.538 ops/s
Iteration  18: 26533.719 ops/s
Iteration  19: 26501.250 ops/s
Iteration  20: 26620.604 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  26299.471 ±(99.9%) 131.893 ops/s [Average]
  (min, avg, max) = (25988.595, 26299.471, 26620.604), stdev = 151.888
  CI (99.9%): [26167.578, 26431.364] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  26299.471 ± 131.893  ops/s
