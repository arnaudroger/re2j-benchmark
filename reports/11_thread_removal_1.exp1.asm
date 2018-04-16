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
# Warmup Iteration   1: 24771.602 ops/s
# Warmup Iteration   2: 26030.788 ops/s
# Warmup Iteration   3: 25996.174 ops/s
# Warmup Iteration   4: 26113.477 ops/s
# Warmup Iteration   5: 26246.512 ops/s
# Warmup Iteration   6: 26124.275 ops/s
# Warmup Iteration   7: 26248.827 ops/s
# Warmup Iteration   8: 26084.081 ops/s
# Warmup Iteration   9: 26286.855 ops/s
# Warmup Iteration  10: 26277.372 ops/s
# Warmup Iteration  11: 26210.078 ops/s
# Warmup Iteration  12: 26169.172 ops/s
# Warmup Iteration  13: 26061.821 ops/s
# Warmup Iteration  14: 26261.358 ops/s
# Warmup Iteration  15: 26278.227 ops/s
# Warmup Iteration  16: 26253.503 ops/s
# Warmup Iteration  17: 26298.326 ops/s
# Warmup Iteration  18: 26125.473 ops/s
# Warmup Iteration  19: 26230.552 ops/s
# Warmup Iteration  20: 26217.674 ops/s
Iteration   1: 26284.453 ops/s
Iteration   2: 26275.429 ops/s
Iteration   3: 26118.517 ops/s
Iteration   4: 26355.086 ops/s
Iteration   5: 26267.893 ops/s
Iteration   6: 26280.455 ops/s
Iteration   7: 26245.500 ops/s
Iteration   8: 26080.031 ops/s
Iteration   9: 26319.937 ops/s
Iteration  10: 26335.112 ops/s
Iteration  11: 26246.532 ops/s
Iteration  12: 26287.398 ops/s
Iteration  13: 26140.995 ops/s
Iteration  14: 26322.435 ops/s
Iteration  15: 26240.319 ops/s
Iteration  16: 26325.427 ops/s
Iteration  17: 26285.135 ops/s
Iteration  18: 26051.544 ops/s
Iteration  19: 26355.125 ops/s
Iteration  20: 26325.437 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  26257.138 ±(99.9%) 77.954 ops/s [Average]
  (min, avg, max) = (26051.544, 26257.138, 26355.125), stdev = 89.772
  CI (99.9%): [26179.184, 26335.092] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  26257.138 ± 77.954  ops/s
