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
# Warmup Iteration   1: 6912.435 ops/s
# Warmup Iteration   2: 7021.852 ops/s
# Warmup Iteration   3: 7091.572 ops/s
# Warmup Iteration   4: 7001.819 ops/s
# Warmup Iteration   5: 6999.273 ops/s
# Warmup Iteration   6: 6989.470 ops/s
# Warmup Iteration   7: 6992.676 ops/s
# Warmup Iteration   8: 7051.741 ops/s
# Warmup Iteration   9: 7076.325 ops/s
# Warmup Iteration  10: 7024.734 ops/s
# Warmup Iteration  11: 7084.018 ops/s
# Warmup Iteration  12: 7049.398 ops/s
# Warmup Iteration  13: 7057.625 ops/s
# Warmup Iteration  14: 7055.906 ops/s
# Warmup Iteration  15: 7034.998 ops/s
# Warmup Iteration  16: 7078.243 ops/s
# Warmup Iteration  17: 7167.595 ops/s
# Warmup Iteration  18: 7174.959 ops/s
# Warmup Iteration  19: 7156.027 ops/s
# Warmup Iteration  20: 7179.764 ops/s
Iteration   1: 7178.526 ops/s
Iteration   2: 7169.841 ops/s
Iteration   3: 7053.020 ops/s
Iteration   4: 7048.082 ops/s
Iteration   5: 7014.930 ops/s
Iteration   6: 7020.660 ops/s
Iteration   7: 7049.022 ops/s
Iteration   8: 6960.939 ops/s
Iteration   9: 7004.731 ops/s
Iteration  10: 6996.774 ops/s
Iteration  11: 6996.655 ops/s
Iteration  12: 7043.511 ops/s
Iteration  13: 6982.958 ops/s
Iteration  14: 7019.272 ops/s
Iteration  15: 6673.720 ops/s
Iteration  16: 6655.666 ops/s
Iteration  17: 5786.723 ops/s
Iteration  18: 6668.626 ops/s
Iteration  19: 6671.544 ops/s
Iteration  20: 6669.726 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  6883.246 ±(99.9%) 269.067 ops/s [Average]
  (min, avg, max) = (5786.723, 6883.246, 7178.526), stdev = 309.858
  CI (99.9%): [6614.179, 7152.313] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  6883.246 ± 269.067  ops/s
