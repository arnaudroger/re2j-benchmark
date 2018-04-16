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
# Warmup Iteration   1: 23262.243 ops/s
# Warmup Iteration   2: 25511.139 ops/s
# Warmup Iteration   3: 25638.632 ops/s
# Warmup Iteration   4: 25515.884 ops/s
# Warmup Iteration   5: 25582.607 ops/s
# Warmup Iteration   6: 25666.744 ops/s
# Warmup Iteration   7: 25796.239 ops/s
# Warmup Iteration   8: 25750.670 ops/s
# Warmup Iteration   9: 25597.462 ops/s
# Warmup Iteration  10: 25777.581 ops/s
# Warmup Iteration  11: 25773.630 ops/s
# Warmup Iteration  12: 25785.924 ops/s
# Warmup Iteration  13: 25654.002 ops/s
# Warmup Iteration  14: 25541.043 ops/s
# Warmup Iteration  15: 25728.769 ops/s
# Warmup Iteration  16: 25783.840 ops/s
# Warmup Iteration  17: 25658.938 ops/s
# Warmup Iteration  18: 25692.406 ops/s
# Warmup Iteration  19: 25334.397 ops/s
# Warmup Iteration  20: 24965.541 ops/s
Iteration   1: 25429.098 ops/s
Iteration   2: 25377.644 ops/s
Iteration   3: 25417.447 ops/s
Iteration   4: 25228.852 ops/s
Iteration   5: 25428.616 ops/s
Iteration   6: 24995.598 ops/s
Iteration   7: 25803.616 ops/s
Iteration   8: 25746.269 ops/s
Iteration   9: 25594.183 ops/s
Iteration  10: 25815.713 ops/s
Iteration  11: 25819.356 ops/s
Iteration  12: 25147.660 ops/s
Iteration  13: 25656.583 ops/s
Iteration  14: 25475.560 ops/s
Iteration  15: 25631.897 ops/s
Iteration  16: 25653.767 ops/s
Iteration  17: 25570.451 ops/s
Iteration  18: 25630.424 ops/s
Iteration  19: 25455.279 ops/s
Iteration  20: 25688.051 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  25528.303 ±(99.9%) 194.867 ops/s [Average]
  (min, avg, max) = (24995.598, 25528.303, 25819.356), stdev = 224.409
  CI (99.9%): [25333.436, 25723.170] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  25528.303 ± 194.867  ops/s
