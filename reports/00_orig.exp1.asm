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
# Warmup Iteration   1: 6323.739 ops/s
# Warmup Iteration   2: 6674.259 ops/s
# Warmup Iteration   3: 6701.147 ops/s
# Warmup Iteration   4: 6450.846 ops/s
# Warmup Iteration   5: 6389.391 ops/s
# Warmup Iteration   6: 6449.737 ops/s
# Warmup Iteration   7: 6465.579 ops/s
# Warmup Iteration   8: 6722.158 ops/s
# Warmup Iteration   9: 6708.784 ops/s
# Warmup Iteration  10: 6691.517 ops/s
# Warmup Iteration  11: 6651.561 ops/s
# Warmup Iteration  12: 6551.324 ops/s
# Warmup Iteration  13: 6552.349 ops/s
# Warmup Iteration  14: 6540.877 ops/s
# Warmup Iteration  15: 6646.263 ops/s
# Warmup Iteration  16: 6761.801 ops/s
# Warmup Iteration  17: 6685.656 ops/s
# Warmup Iteration  18: 6706.684 ops/s
# Warmup Iteration  19: 6739.347 ops/s
# Warmup Iteration  20: 6672.649 ops/s
Iteration   1: 6750.620 ops/s
Iteration   2: 6683.673 ops/s
Iteration   3: 6650.788 ops/s
Iteration   4: 6654.908 ops/s
Iteration   5: 6602.143 ops/s
Iteration   6: 6706.068 ops/s
Iteration   7: 6704.025 ops/s
Iteration   8: 6700.204 ops/s
Iteration   9: 6678.326 ops/s
Iteration  10: 6646.926 ops/s
Iteration  11: 6694.547 ops/s
Iteration  12: 6687.942 ops/s
Iteration  13: 6689.669 ops/s
Iteration  14: 6122.875 ops/s
Iteration  15: 6103.578 ops/s
Iteration  16: 6457.866 ops/s
Iteration  17: 6680.118 ops/s
Iteration  18: 6680.392 ops/s
Iteration  19: 6661.590 ops/s
Iteration  20: 6638.155 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  6609.721 ±(99.9%) 155.716 ops/s [Average]
  (min, avg, max) = (6103.578, 6609.721, 6750.620), stdev = 179.323
  CI (99.9%): [6454.005, 6765.437] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  6609.721 ± 155.716  ops/s
