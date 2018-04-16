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
# Warmup Iteration   1: 9539.386 ops/s
# Warmup Iteration   2: 10037.094 ops/s
# Warmup Iteration   3: 10088.397 ops/s
# Warmup Iteration   4: 10028.986 ops/s
# Warmup Iteration   5: 10099.506 ops/s
# Warmup Iteration   6: 10094.082 ops/s
# Warmup Iteration   7: 9990.373 ops/s
# Warmup Iteration   8: 10004.486 ops/s
# Warmup Iteration   9: 10089.461 ops/s
# Warmup Iteration  10: 10123.116 ops/s
# Warmup Iteration  11: 10095.222 ops/s
# Warmup Iteration  12: 10165.433 ops/s
# Warmup Iteration  13: 10161.225 ops/s
# Warmup Iteration  14: 10070.791 ops/s
# Warmup Iteration  15: 10156.217 ops/s
# Warmup Iteration  16: 10174.678 ops/s
# Warmup Iteration  17: 9978.866 ops/s
# Warmup Iteration  18: 10004.683 ops/s
# Warmup Iteration  19: 9928.703 ops/s
# Warmup Iteration  20: 9989.856 ops/s
Iteration   1: 10016.738 ops/s
Iteration   2: 10003.226 ops/s
Iteration   3: 10000.209 ops/s
Iteration   4: 9940.136 ops/s
Iteration   5: 9966.090 ops/s
Iteration   6: 9950.456 ops/s
Iteration   7: 9852.224 ops/s
Iteration   8: 9843.348 ops/s
Iteration   9: 9794.457 ops/s
Iteration  10: 9867.448 ops/s
Iteration  11: 9867.624 ops/s
Iteration  12: 9862.303 ops/s
Iteration  13: 9843.931 ops/s
Iteration  14: 9771.644 ops/s
Iteration  15: 9857.092 ops/s
Iteration  16: 9906.327 ops/s
Iteration  17: 10024.945 ops/s
Iteration  18: 9973.715 ops/s
Iteration  19: 9946.790 ops/s
Iteration  20: 10014.807 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9915.175 ±(99.9%) 67.943 ops/s [Average]
  (min, avg, max) = (9771.644, 9915.175, 10024.945), stdev = 78.244
  CI (99.9%): [9847.232, 9983.119] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  9915.175 ± 67.943  ops/s
