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
# Warmup Iteration   1: 24740.862 ops/s
# Warmup Iteration   2: 26000.369 ops/s
# Warmup Iteration   3: 26174.183 ops/s
# Warmup Iteration   4: 26241.894 ops/s
# Warmup Iteration   5: 26256.944 ops/s
# Warmup Iteration   6: 26136.965 ops/s
# Warmup Iteration   7: 25928.662 ops/s
# Warmup Iteration   8: 26070.640 ops/s
# Warmup Iteration   9: 26121.139 ops/s
# Warmup Iteration  10: 25790.695 ops/s
# Warmup Iteration  11: 26072.304 ops/s
# Warmup Iteration  12: 25866.720 ops/s
# Warmup Iteration  13: 26330.276 ops/s
# Warmup Iteration  14: 26335.000 ops/s
# Warmup Iteration  15: 26321.030 ops/s
# Warmup Iteration  16: 26302.448 ops/s
# Warmup Iteration  17: 26120.550 ops/s
# Warmup Iteration  18: 26313.898 ops/s
# Warmup Iteration  19: 26331.483 ops/s
# Warmup Iteration  20: 26352.072 ops/s
Iteration   1: 26304.509 ops/s
Iteration   2: 26135.478 ops/s
Iteration   3: 26310.810 ops/s
Iteration   4: 26315.658 ops/s
Iteration   5: 26065.643 ops/s
Iteration   6: 26238.730 ops/s
Iteration   7: 26088.442 ops/s
Iteration   8: 26295.936 ops/s
Iteration   9: 26287.006 ops/s
Iteration  10: 26292.728 ops/s
Iteration  11: 26239.579 ops/s
Iteration  12: 26022.144 ops/s
Iteration  13: 26348.022 ops/s
Iteration  14: 26355.935 ops/s
Iteration  15: 26339.807 ops/s
Iteration  16: 26306.688 ops/s
Iteration  17: 26130.976 ops/s
Iteration  18: 26270.182 ops/s
Iteration  19: 26330.622 ops/s
Iteration  20: 26332.672 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  26250.578 ±(99.9%) 89.459 ops/s [Average]
  (min, avg, max) = (26022.144, 26250.578, 26355.935), stdev = 103.021
  CI (99.9%): [26161.119, 26340.037] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  26250.578 ± 89.459  ops/s
