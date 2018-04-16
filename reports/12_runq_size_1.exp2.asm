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
# Warmup Iteration   1: 21897.663 ops/s
# Warmup Iteration   2: 22525.201 ops/s
# Warmup Iteration   3: 22714.759 ops/s
# Warmup Iteration   4: 22862.945 ops/s
# Warmup Iteration   5: 22972.956 ops/s
# Warmup Iteration   6: 22964.976 ops/s
# Warmup Iteration   7: 22820.620 ops/s
# Warmup Iteration   8: 23021.887 ops/s
# Warmup Iteration   9: 22918.525 ops/s
# Warmup Iteration  10: 22940.777 ops/s
# Warmup Iteration  11: 22993.112 ops/s
# Warmup Iteration  12: 22858.720 ops/s
# Warmup Iteration  13: 23036.412 ops/s
# Warmup Iteration  14: 22768.171 ops/s
# Warmup Iteration  15: 22728.415 ops/s
# Warmup Iteration  16: 22680.199 ops/s
# Warmup Iteration  17: 21554.297 ops/s
# Warmup Iteration  18: 21709.961 ops/s
# Warmup Iteration  19: 21713.277 ops/s
# Warmup Iteration  20: 21734.249 ops/s
Iteration   1: 21686.620 ops/s
Iteration   2: 22678.942 ops/s
Iteration   3: 23041.143 ops/s
Iteration   4: 23003.334 ops/s
Iteration   5: 22949.910 ops/s
Iteration   6: 22507.493 ops/s
Iteration   7: 22882.035 ops/s
Iteration   8: 23069.096 ops/s
Iteration   9: 22643.408 ops/s
Iteration  10: 22486.069 ops/s
Iteration  11: 22450.532 ops/s
Iteration  12: 22291.291 ops/s
Iteration  13: 22448.431 ops/s
Iteration  14: 22443.371 ops/s
Iteration  15: 22474.590 ops/s
Iteration  16: 22436.460 ops/s
Iteration  17: 22857.852 ops/s
Iteration  18: 22876.802 ops/s
Iteration  19: 22996.221 ops/s
Iteration  20: 23010.576 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  22661.709 ±(99.9%) 298.381 ops/s [Average]
  (min, avg, max) = (21686.620, 22661.709, 23069.096), stdev = 343.616
  CI (99.9%): [22363.328, 22960.090] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  22661.709 ± 298.381  ops/s
