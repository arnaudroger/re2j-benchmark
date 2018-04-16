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
# Warmup Iteration   1: 17244.861 ops/s
# Warmup Iteration   2: 18025.770 ops/s
# Warmup Iteration   3: 18003.910 ops/s
# Warmup Iteration   4: 17959.876 ops/s
# Warmup Iteration   5: 18176.928 ops/s
# Warmup Iteration   6: 18192.087 ops/s
# Warmup Iteration   7: 18194.625 ops/s
# Warmup Iteration   8: 18162.497 ops/s
# Warmup Iteration   9: 17438.015 ops/s
# Warmup Iteration  10: 17455.772 ops/s
# Warmup Iteration  11: 17417.167 ops/s
# Warmup Iteration  12: 18235.343 ops/s
# Warmup Iteration  13: 18130.534 ops/s
# Warmup Iteration  14: 18195.148 ops/s
# Warmup Iteration  15: 18280.802 ops/s
# Warmup Iteration  16: 18272.128 ops/s
# Warmup Iteration  17: 18230.699 ops/s
# Warmup Iteration  18: 18236.937 ops/s
# Warmup Iteration  19: 18291.188 ops/s
# Warmup Iteration  20: 17934.659 ops/s
Iteration   1: 17897.633 ops/s
Iteration   2: 17865.462 ops/s
Iteration   3: 17857.343 ops/s
Iteration   4: 17894.688 ops/s
Iteration   5: 17879.665 ops/s
Iteration   6: 17538.438 ops/s
Iteration   7: 17727.743 ops/s
Iteration   8: 17818.290 ops/s
Iteration   9: 17837.597 ops/s
Iteration  10: 17867.985 ops/s
Iteration  11: 17906.625 ops/s
Iteration  12: 17905.732 ops/s
Iteration  13: 17838.429 ops/s
Iteration  14: 17905.736 ops/s
Iteration  15: 17880.019 ops/s
Iteration  16: 17890.323 ops/s
Iteration  17: 17886.367 ops/s
Iteration  18: 17818.076 ops/s
Iteration  19: 17911.720 ops/s
Iteration  20: 17893.845 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  17851.086 ±(99.9%) 74.291 ops/s [Average]
  (min, avg, max) = (17538.438, 17851.086, 17911.720), stdev = 85.554
  CI (99.9%): [17776.795, 17925.377] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  17851.086 ± 74.291  ops/s
