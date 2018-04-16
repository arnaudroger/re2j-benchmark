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
# Warmup Iteration   1: 17196.479 ops/s
# Warmup Iteration   2: 18129.882 ops/s
# Warmup Iteration   3: 18240.802 ops/s
# Warmup Iteration   4: 18260.184 ops/s
# Warmup Iteration   5: 18101.581 ops/s
# Warmup Iteration   6: 18343.172 ops/s
# Warmup Iteration   7: 18481.112 ops/s
# Warmup Iteration   8: 18340.639 ops/s
# Warmup Iteration   9: 18072.267 ops/s
# Warmup Iteration  10: 18020.818 ops/s
# Warmup Iteration  11: 18364.592 ops/s
# Warmup Iteration  12: 18496.295 ops/s
# Warmup Iteration  13: 18440.445 ops/s
# Warmup Iteration  14: 18318.539 ops/s
# Warmup Iteration  15: 18487.172 ops/s
# Warmup Iteration  16: 18503.398 ops/s
# Warmup Iteration  17: 18338.367 ops/s
# Warmup Iteration  18: 18426.854 ops/s
# Warmup Iteration  19: 18309.195 ops/s
# Warmup Iteration  20: 18127.425 ops/s
Iteration   1: 18082.232 ops/s
Iteration   2: 18037.817 ops/s
Iteration   3: 18072.915 ops/s
Iteration   4: 18031.029 ops/s
Iteration   5: 18104.683 ops/s
Iteration   6: 18144.473 ops/s
Iteration   7: 18115.421 ops/s
Iteration   8: 18062.477 ops/s
Iteration   9: 18048.209 ops/s
Iteration  10: 18090.130 ops/s
Iteration  11: 18130.923 ops/s
Iteration  12: 18114.217 ops/s
Iteration  13: 18063.555 ops/s
Iteration  14: 18037.569 ops/s
Iteration  15: 18120.835 ops/s
Iteration  16: 18138.700 ops/s
Iteration  17: 17954.642 ops/s
Iteration  18: 18067.699 ops/s
Iteration  19: 18001.632 ops/s
Iteration  20: 18140.270 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  18077.971 ±(99.9%) 43.727 ops/s [Average]
  (min, avg, max) = (17954.642, 18077.971, 18144.473), stdev = 50.356
  CI (99.9%): [18034.244, 18121.699] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  18077.971 ± 43.727  ops/s
