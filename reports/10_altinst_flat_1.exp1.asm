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
# Warmup Iteration   1: 14036.104 ops/s
# Warmup Iteration   2: 18197.997 ops/s
# Warmup Iteration   3: 18108.611 ops/s
# Warmup Iteration   4: 18344.775 ops/s
# Warmup Iteration   5: 18443.162 ops/s
# Warmup Iteration   6: 18044.860 ops/s
# Warmup Iteration   7: 18369.300 ops/s
# Warmup Iteration   8: 17533.187 ops/s
# Warmup Iteration   9: 18239.557 ops/s
# Warmup Iteration  10: 18476.663 ops/s
# Warmup Iteration  11: 18379.458 ops/s
# Warmup Iteration  12: 18284.770 ops/s
# Warmup Iteration  13: 15730.694 ops/s
# Warmup Iteration  14: 18291.139 ops/s
# Warmup Iteration  15: 18458.352 ops/s
# Warmup Iteration  16: 18456.973 ops/s
# Warmup Iteration  17: 18102.212 ops/s
# Warmup Iteration  18: 18021.282 ops/s
# Warmup Iteration  19: 15837.100 ops/s
# Warmup Iteration  20: 18145.849 ops/s
Iteration   1: 18217.272 ops/s
Iteration   2: 18176.435 ops/s
Iteration   3: 17993.176 ops/s
Iteration   4: 18189.326 ops/s
Iteration   5: 18182.279 ops/s
Iteration   6: 18206.268 ops/s
Iteration   7: 18181.587 ops/s
Iteration   8: 18027.983 ops/s
Iteration   9: 18211.923 ops/s
Iteration  10: 18175.786 ops/s
Iteration  11: 18142.203 ops/s
Iteration  12: 18171.003 ops/s
Iteration  13: 17986.573 ops/s
Iteration  14: 18194.315 ops/s
Iteration  15: 18182.718 ops/s
Iteration  16: 18181.999 ops/s
Iteration  17: 18186.703 ops/s
Iteration  18: 18014.844 ops/s
Iteration  19: 18213.852 ops/s
Iteration  20: 18189.710 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  18151.298 ±(99.9%) 66.807 ops/s [Average]
  (min, avg, max) = (17986.573, 18151.298, 18217.272), stdev = 76.935
  CI (99.9%): [18084.491, 18218.105] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  18151.298 ± 66.807  ops/s
