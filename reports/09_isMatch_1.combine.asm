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
# Warmup Iteration   1: 5095.439 ops/s
# Warmup Iteration   2: 5427.669 ops/s
# Warmup Iteration   3: 5405.420 ops/s
# Warmup Iteration   4: 5538.343 ops/s
# Warmup Iteration   5: 5188.252 ops/s
# Warmup Iteration   6: 5542.395 ops/s
# Warmup Iteration   7: 5513.079 ops/s
# Warmup Iteration   8: 5529.463 ops/s
# Warmup Iteration   9: 5559.623 ops/s
# Warmup Iteration  10: 5490.019 ops/s
# Warmup Iteration  11: 5139.729 ops/s
# Warmup Iteration  12: 5483.526 ops/s
# Warmup Iteration  13: 5490.923 ops/s
# Warmup Iteration  14: 5535.040 ops/s
# Warmup Iteration  15: 5501.405 ops/s
# Warmup Iteration  16: 5531.884 ops/s
# Warmup Iteration  17: 5182.751 ops/s
# Warmup Iteration  18: 5489.393 ops/s
# Warmup Iteration  19: 5443.515 ops/s
# Warmup Iteration  20: 5496.205 ops/s
Iteration   1: 5515.340 ops/s
Iteration   2: 5496.838 ops/s
Iteration   3: 5554.926 ops/s
Iteration   4: 5557.063 ops/s
Iteration   5: 5499.885 ops/s
Iteration   6: 5548.530 ops/s
Iteration   7: 5510.224 ops/s
Iteration   8: 5542.844 ops/s
Iteration   9: 5050.390 ops/s
Iteration  10: 5537.744 ops/s
Iteration  11: 5541.646 ops/s
Iteration  12: 5514.745 ops/s
Iteration  13: 5539.235 ops/s
Iteration  14: 5558.245 ops/s
Iteration  15: 4354.093 ops/s
Iteration  16: 5539.231 ops/s
Iteration  17: 5508.188 ops/s
Iteration  18: 5546.438 ops/s
Iteration  19: 5552.053 ops/s
Iteration  20: 5554.192 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5451.093 ±(99.9%) 243.657 ops/s [Average]
  (min, avg, max) = (4354.093, 5451.093, 5558.245), stdev = 280.596
  CI (99.9%): [5207.436, 5694.749] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine  thrpt   20  5451.093 ± 243.657  ops/s
