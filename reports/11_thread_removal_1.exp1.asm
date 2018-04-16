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
# Warmup Iteration   1: 24583.109 ops/s
# Warmup Iteration   2: 25986.592 ops/s
# Warmup Iteration   3: 25950.177 ops/s
# Warmup Iteration   4: 26043.543 ops/s
# Warmup Iteration   5: 26024.369 ops/s
# Warmup Iteration   6: 26067.489 ops/s
# Warmup Iteration   7: 26208.694 ops/s
# Warmup Iteration   8: 26187.137 ops/s
# Warmup Iteration   9: 26201.919 ops/s
# Warmup Iteration  10: 25970.981 ops/s
# Warmup Iteration  11: 26171.798 ops/s
# Warmup Iteration  12: 26151.812 ops/s
# Warmup Iteration  13: 26160.775 ops/s
# Warmup Iteration  14: 26192.694 ops/s
# Warmup Iteration  15: 26025.829 ops/s
# Warmup Iteration  16: 26217.945 ops/s
# Warmup Iteration  17: 26127.704 ops/s
# Warmup Iteration  18: 26194.732 ops/s
# Warmup Iteration  19: 26095.651 ops/s
# Warmup Iteration  20: 25990.209 ops/s
Iteration   1: 26147.429 ops/s
Iteration   2: 26140.509 ops/s
Iteration   3: 26136.163 ops/s
Iteration   4: 26133.627 ops/s
Iteration   5: 25940.147 ops/s
Iteration   6: 26198.416 ops/s
Iteration   7: 26194.246 ops/s
Iteration   8: 26219.703 ops/s
Iteration   9: 26181.055 ops/s
Iteration  10: 26036.355 ops/s
Iteration  11: 26233.406 ops/s
Iteration  12: 26151.504 ops/s
Iteration  13: 26159.264 ops/s
Iteration  14: 26184.525 ops/s
Iteration  15: 26041.895 ops/s
Iteration  16: 26203.694 ops/s
Iteration  17: 26212.590 ops/s
Iteration  18: 26099.891 ops/s
Iteration  19: 26152.934 ops/s
Iteration  20: 26023.521 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  26139.544 ±(99.9%) 66.278 ops/s [Average]
  (min, avg, max) = (25940.147, 26139.544, 26233.406), stdev = 76.326
  CI (99.9%): [26073.265, 26205.822] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  26139.544 ± 66.278  ops/s
