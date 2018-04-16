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
# Warmup Iteration   1: 10900.063 ops/s
# Warmup Iteration   2: 11246.971 ops/s
# Warmup Iteration   3: 11235.676 ops/s
# Warmup Iteration   4: 11080.356 ops/s
# Warmup Iteration   5: 11355.479 ops/s
# Warmup Iteration   6: 11338.894 ops/s
# Warmup Iteration   7: 11361.738 ops/s
# Warmup Iteration   8: 11229.741 ops/s
# Warmup Iteration   9: 11360.741 ops/s
# Warmup Iteration  10: 11285.489 ops/s
# Warmup Iteration  11: 11333.287 ops/s
# Warmup Iteration  12: 11230.206 ops/s
# Warmup Iteration  13: 11240.014 ops/s
# Warmup Iteration  14: 11423.755 ops/s
# Warmup Iteration  15: 11425.874 ops/s
# Warmup Iteration  16: 11428.237 ops/s
# Warmup Iteration  17: 11120.020 ops/s
# Warmup Iteration  18: 11130.451 ops/s
# Warmup Iteration  19: 11313.001 ops/s
# Warmup Iteration  20: 11304.292 ops/s
Iteration   1: 11309.122 ops/s
Iteration   2: 11253.401 ops/s
Iteration   3: 11208.413 ops/s
Iteration   4: 11287.371 ops/s
Iteration   5: 11294.543 ops/s
Iteration   6: 11288.670 ops/s
Iteration   7: 10848.868 ops/s
Iteration   8: 11212.849 ops/s
Iteration   9: 11309.324 ops/s
Iteration  10: 11275.321 ops/s
Iteration  11: 11265.068 ops/s
Iteration  12: 11277.355 ops/s
Iteration  13: 10719.789 ops/s
Iteration  14: 11291.423 ops/s
Iteration  15: 11279.150 ops/s
Iteration  16: 11304.039 ops/s
Iteration  17: 11285.906 ops/s
Iteration  18: 11212.662 ops/s
Iteration  19: 10850.154 ops/s
Iteration  20: 11261.189 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  11201.731 ±(99.9%) 151.748 ops/s [Average]
  (min, avg, max) = (10719.789, 11201.731, 11309.324), stdev = 174.753
  CI (99.9%): [11049.983, 11353.478] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  11201.731 ± 151.748  ops/s
