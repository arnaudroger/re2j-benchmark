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
# Warmup Iteration   1: 26695.770 ops/s
# Warmup Iteration   2: 28479.740 ops/s
# Warmup Iteration   3: 28547.943 ops/s
# Warmup Iteration   4: 28552.345 ops/s
# Warmup Iteration   5: 28016.531 ops/s
# Warmup Iteration   6: 28566.448 ops/s
# Warmup Iteration   7: 28769.976 ops/s
# Warmup Iteration   8: 28772.653 ops/s
# Warmup Iteration   9: 28754.307 ops/s
# Warmup Iteration  10: 28585.728 ops/s
# Warmup Iteration  11: 28671.195 ops/s
# Warmup Iteration  12: 28363.757 ops/s
# Warmup Iteration  13: 28404.548 ops/s
# Warmup Iteration  14: 28381.227 ops/s
# Warmup Iteration  15: 28213.062 ops/s
# Warmup Iteration  16: 28424.380 ops/s
# Warmup Iteration  17: 28679.526 ops/s
# Warmup Iteration  18: 28651.650 ops/s
# Warmup Iteration  19: 28623.154 ops/s
# Warmup Iteration  20: 28464.272 ops/s
Iteration   1: 28713.552 ops/s
Iteration   2: 28749.321 ops/s
Iteration   3: 28388.501 ops/s
Iteration   4: 28612.627 ops/s
Iteration   5: 28418.621 ops/s
Iteration   6: 28663.106 ops/s
Iteration   7: 28627.043 ops/s
Iteration   8: 28636.271 ops/s
Iteration   9: 28476.004 ops/s
Iteration  10: 28404.361 ops/s
Iteration  11: 28664.030 ops/s
Iteration  12: 28659.000 ops/s
Iteration  13: 28622.350 ops/s
Iteration  14: 28620.761 ops/s
Iteration  15: 28144.292 ops/s
Iteration  16: 28382.454 ops/s
Iteration  17: 28387.179 ops/s
Iteration  18: 28205.806 ops/s
Iteration  19: 28323.607 ops/s
Iteration  20: 28078.032 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  28488.846 ±(99.9%) 171.207 ops/s [Average]
  (min, avg, max) = (28078.032, 28488.846, 28749.321), stdev = 197.162
  CI (99.9%): [28317.639, 28660.053] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  28488.846 ± 171.207  ops/s
