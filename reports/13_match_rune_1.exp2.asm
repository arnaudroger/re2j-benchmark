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
# Warmup Iteration   1: 24309.160 ops/s
# Warmup Iteration   2: 25619.875 ops/s
# Warmup Iteration   3: 25828.553 ops/s
# Warmup Iteration   4: 25781.831 ops/s
# Warmup Iteration   5: 25633.980 ops/s
# Warmup Iteration   6: 25626.500 ops/s
# Warmup Iteration   7: 25517.313 ops/s
# Warmup Iteration   8: 25521.293 ops/s
# Warmup Iteration   9: 25480.350 ops/s
# Warmup Iteration  10: 25313.667 ops/s
# Warmup Iteration  11: 25501.575 ops/s
# Warmup Iteration  12: 25508.281 ops/s
# Warmup Iteration  13: 25887.735 ops/s
# Warmup Iteration  14: 25876.772 ops/s
# Warmup Iteration  15: 25766.284 ops/s
# Warmup Iteration  16: 25939.053 ops/s
# Warmup Iteration  17: 25943.362 ops/s
# Warmup Iteration  18: 25914.680 ops/s
# Warmup Iteration  19: 25874.584 ops/s
# Warmup Iteration  20: 25825.561 ops/s
Iteration   1: 25990.520 ops/s
Iteration   2: 25946.675 ops/s
Iteration   3: 25947.926 ops/s
Iteration   4: 25948.104 ops/s
Iteration   5: 25741.418 ops/s
Iteration   6: 25918.484 ops/s
Iteration   7: 25887.923 ops/s
Iteration   8: 25897.196 ops/s
Iteration   9: 25897.236 ops/s
Iteration  10: 25732.142 ops/s
Iteration  11: 25931.919 ops/s
Iteration  12: 25883.960 ops/s
Iteration  13: 25895.421 ops/s
Iteration  14: 25853.886 ops/s
Iteration  15: 25724.880 ops/s
Iteration  16: 25930.984 ops/s
Iteration  17: 25943.258 ops/s
Iteration  18: 25804.188 ops/s
Iteration  19: 25918.492 ops/s
Iteration  20: 25777.300 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  25878.596 ±(99.9%) 69.339 ops/s [Average]
  (min, avg, max) = (25724.880, 25878.596, 25990.520), stdev = 79.851
  CI (99.9%): [25809.257, 25947.935] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  25878.596 ± 69.339  ops/s
