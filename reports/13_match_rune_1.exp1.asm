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
# Warmup Iteration   1: 25498.821 ops/s
# Warmup Iteration   2: 26976.448 ops/s
# Warmup Iteration   3: 27117.586 ops/s
# Warmup Iteration   4: 26969.785 ops/s
# Warmup Iteration   5: 27113.172 ops/s
# Warmup Iteration   6: 27148.589 ops/s
# Warmup Iteration   7: 27234.112 ops/s
# Warmup Iteration   8: 27216.741 ops/s
# Warmup Iteration   9: 27057.077 ops/s
# Warmup Iteration  10: 27270.194 ops/s
# Warmup Iteration  11: 27218.189 ops/s
# Warmup Iteration  12: 27077.984 ops/s
# Warmup Iteration  13: 27156.964 ops/s
# Warmup Iteration  14: 27099.216 ops/s
# Warmup Iteration  15: 27255.453 ops/s
# Warmup Iteration  16: 27299.858 ops/s
# Warmup Iteration  17: 27286.766 ops/s
# Warmup Iteration  18: 27150.335 ops/s
# Warmup Iteration  19: 27051.285 ops/s
# Warmup Iteration  20: 27254.217 ops/s
Iteration   1: 27201.132 ops/s
Iteration   2: 27238.894 ops/s
Iteration   3: 27123.374 ops/s
Iteration   4: 27068.993 ops/s
Iteration   5: 27188.190 ops/s
Iteration   6: 27247.045 ops/s
Iteration   7: 27139.037 ops/s
Iteration   8: 27216.176 ops/s
Iteration   9: 26996.374 ops/s
Iteration  10: 27201.500 ops/s
Iteration  11: 27301.127 ops/s
Iteration  12: 27254.416 ops/s
Iteration  13: 27253.637 ops/s
Iteration  14: 27051.341 ops/s
Iteration  15: 27293.048 ops/s
Iteration  16: 27184.525 ops/s
Iteration  17: 27154.720 ops/s
Iteration  18: 27217.921 ops/s
Iteration  19: 27077.950 ops/s
Iteration  20: 27271.465 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  27184.043 ±(99.9%) 73.653 ops/s [Average]
  (min, avg, max) = (26996.374, 27184.043, 27301.127), stdev = 84.818
  CI (99.9%): [27110.391, 27257.696] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  27184.043 ± 73.653  ops/s
