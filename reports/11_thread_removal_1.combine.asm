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
# Warmup Iteration   1: 4731.076 ops/s
# Warmup Iteration   2: 4993.544 ops/s
# Warmup Iteration   3: 4966.333 ops/s
# Warmup Iteration   4: 5087.726 ops/s
# Warmup Iteration   5: 5085.458 ops/s
# Warmup Iteration   6: 4609.848 ops/s
# Warmup Iteration   7: 4953.951 ops/s
# Warmup Iteration   8: 5092.813 ops/s
# Warmup Iteration   9: 5104.783 ops/s
# Warmup Iteration  10: 5100.081 ops/s
# Warmup Iteration  11: 5087.086 ops/s
# Warmup Iteration  12: 5075.946 ops/s
# Warmup Iteration  13: 5095.952 ops/s
# Warmup Iteration  14: 5070.109 ops/s
# Warmup Iteration  15: 5076.591 ops/s
# Warmup Iteration  16: 5081.252 ops/s
# Warmup Iteration  17: 5081.655 ops/s
# Warmup Iteration  18: 5117.240 ops/s
# Warmup Iteration  19: 5098.266 ops/s
# Warmup Iteration  20: 5113.020 ops/s
Iteration   1: 5108.508 ops/s
Iteration   2: 5066.142 ops/s
Iteration   3: 5125.929 ops/s
Iteration   4: 5112.436 ops/s
Iteration   5: 5122.159 ops/s
Iteration   6: 5108.822 ops/s
Iteration   7: 5079.634 ops/s
Iteration   8: 5110.930 ops/s
Iteration   9: 5117.019 ops/s
Iteration  10: 5105.145 ops/s
Iteration  11: 5088.321 ops/s
Iteration  12: 5090.231 ops/s
Iteration  13: 5123.737 ops/s
Iteration  14: 5126.704 ops/s
Iteration  15: 5123.682 ops/s
Iteration  16: 5100.616 ops/s
Iteration  17: 5115.156 ops/s
Iteration  18: 5113.822 ops/s
Iteration  19: 5128.922 ops/s
Iteration  20: 5117.641 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5109.278 ±(99.9%) 14.614 ops/s [Average]
  (min, avg, max) = (5066.142, 5109.278, 5128.922), stdev = 16.830
  CI (99.9%): [5094.664, 5123.892] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5109.278 ± 14.614  ops/s
