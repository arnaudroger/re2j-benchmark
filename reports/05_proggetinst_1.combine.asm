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
# Warmup Iteration   1: 4072.047 ops/s
# Warmup Iteration   2: 4145.652 ops/s
# Warmup Iteration   3: 4148.991 ops/s
# Warmup Iteration   4: 4168.241 ops/s
# Warmup Iteration   5: 4170.076 ops/s
# Warmup Iteration   6: 4169.813 ops/s
# Warmup Iteration   7: 4114.364 ops/s
# Warmup Iteration   8: 4093.228 ops/s
# Warmup Iteration   9: 4126.989 ops/s
# Warmup Iteration  10: 4163.338 ops/s
# Warmup Iteration  11: 4207.276 ops/s
# Warmup Iteration  12: 4202.449 ops/s
# Warmup Iteration  13: 4154.182 ops/s
# Warmup Iteration  14: 4168.886 ops/s
# Warmup Iteration  15: 4160.630 ops/s
# Warmup Iteration  16: 4122.168 ops/s
# Warmup Iteration  17: 4159.364 ops/s
# Warmup Iteration  18: 4165.935 ops/s
# Warmup Iteration  19: 4201.245 ops/s
# Warmup Iteration  20: 4098.351 ops/s
Iteration   1: 4084.207 ops/s
Iteration   2: 4080.948 ops/s
Iteration   3: 4118.125 ops/s
Iteration   4: 4213.588 ops/s
Iteration   5: 4211.420 ops/s
Iteration   6: 4207.207 ops/s
Iteration   7: 4177.326 ops/s
Iteration   8: 4134.823 ops/s
Iteration   9: 4171.533 ops/s
Iteration  10: 4179.226 ops/s
Iteration  11: 4177.337 ops/s
Iteration  12: 4146.319 ops/s
Iteration  13: 4134.241 ops/s
Iteration  14: 4177.380 ops/s
Iteration  15: 4175.827 ops/s
Iteration  16: 4179.285 ops/s
Iteration  17: 4171.620 ops/s
Iteration  18: 4139.560 ops/s
Iteration  19: 4178.655 ops/s
Iteration  20: 4179.305 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  4161.896 ±(99.9%) 32.249 ops/s [Average]
  (min, avg, max) = (4080.948, 4161.896, 4213.588), stdev = 37.138
  CI (99.9%): [4129.647, 4194.146] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  4161.896 ± 32.249  ops/s
