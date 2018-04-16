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
# Warmup Iteration   1: 17327.764 ops/s
# Warmup Iteration   2: 18370.874 ops/s
# Warmup Iteration   3: 18397.253 ops/s
# Warmup Iteration   4: 18553.612 ops/s
# Warmup Iteration   5: 18559.832 ops/s
# Warmup Iteration   6: 18376.214 ops/s
# Warmup Iteration   7: 18451.011 ops/s
# Warmup Iteration   8: 18240.064 ops/s
# Warmup Iteration   9: 18502.250 ops/s
# Warmup Iteration  10: 18495.695 ops/s
# Warmup Iteration  11: 18441.497 ops/s
# Warmup Iteration  12: 18537.396 ops/s
# Warmup Iteration  13: 18418.844 ops/s
# Warmup Iteration  14: 18416.807 ops/s
# Warmup Iteration  15: 18561.101 ops/s
# Warmup Iteration  16: 18533.525 ops/s
# Warmup Iteration  17: 18505.805 ops/s
# Warmup Iteration  18: 18409.483 ops/s
# Warmup Iteration  19: 18526.541 ops/s
# Warmup Iteration  20: 18525.174 ops/s
Iteration   1: 18529.335 ops/s
Iteration   2: 18463.526 ops/s
Iteration   3: 18238.859 ops/s
Iteration   4: 18274.904 ops/s
Iteration   5: 18393.707 ops/s
Iteration   6: 18502.369 ops/s
Iteration   7: 18487.777 ops/s
Iteration   8: 18396.711 ops/s
Iteration   9: 18395.893 ops/s
Iteration  10: 18527.045 ops/s
Iteration  11: 18495.931 ops/s
Iteration  12: 18440.122 ops/s
Iteration  13: 18400.534 ops/s
Iteration  14: 18515.040 ops/s
Iteration  15: 18530.352 ops/s
Iteration  16: 18519.800 ops/s
Iteration  17: 18124.829 ops/s
Iteration  18: 18384.342 ops/s
Iteration  19: 18509.131 ops/s
Iteration  20: 18172.265 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  18415.124 ±(99.9%) 106.784 ops/s [Average]
  (min, avg, max) = (18124.829, 18415.124, 18530.352), stdev = 122.973
  CI (99.9%): [18308.340, 18521.908] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  18415.124 ± 106.784  ops/s
