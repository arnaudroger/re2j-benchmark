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
# Warmup Iteration   1: 6999.567 ops/s
# Warmup Iteration   2: 7440.649 ops/s
# Warmup Iteration   3: 7090.361 ops/s
# Warmup Iteration   4: 7495.048 ops/s
# Warmup Iteration   5: 7492.350 ops/s
# Warmup Iteration   6: 7469.080 ops/s
# Warmup Iteration   7: 5562.241 ops/s
# Warmup Iteration   8: 4269.604 ops/s
# Warmup Iteration   9: 7316.924 ops/s
# Warmup Iteration  10: 7405.072 ops/s
# Warmup Iteration  11: 7287.494 ops/s
# Warmup Iteration  12: 7384.379 ops/s
# Warmup Iteration  13: 7510.841 ops/s
# Warmup Iteration  14: 7342.579 ops/s
# Warmup Iteration  15: 7177.420 ops/s
# Warmup Iteration  16: 7303.656 ops/s
# Warmup Iteration  17: 7345.012 ops/s
# Warmup Iteration  18: 7245.191 ops/s
# Warmup Iteration  19: 7248.122 ops/s
# Warmup Iteration  20: 7249.783 ops/s
Iteration   1: 7424.275 ops/s
Iteration   2: 7459.011 ops/s
Iteration   3: 7467.874 ops/s
Iteration   4: 7352.262 ops/s
Iteration   5: 7370.314 ops/s
Iteration   6: 7319.873 ops/s
Iteration   7: 7195.660 ops/s
Iteration   8: 7380.347 ops/s
Iteration   9: 7378.239 ops/s
Iteration  10: 7368.677 ops/s
Iteration  11: 7265.847 ops/s
Iteration  12: 7347.229 ops/s
Iteration  13: 7362.886 ops/s
Iteration  14: 7362.689 ops/s
Iteration  15: 7371.325 ops/s
Iteration  16: 7312.347 ops/s
Iteration  17: 7375.329 ops/s
Iteration  18: 7372.556 ops/s
Iteration  19: 7355.131 ops/s
Iteration  20: 7361.747 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  7360.181 ±(99.9%) 51.580 ops/s [Average]
  (min, avg, max) = (7195.660, 7360.181, 7467.874), stdev = 59.400
  CI (99.9%): [7308.601, 7411.761] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  7360.181 ± 51.580  ops/s
