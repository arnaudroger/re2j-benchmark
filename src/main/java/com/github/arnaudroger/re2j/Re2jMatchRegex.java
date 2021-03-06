/*
 * Copyright (c) 2014, Oracle America, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 *  * Neither the name of Oracle nor the names of its contributors may be used
 *    to endorse or promote products derived from this software without
 *    specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 */

package com.github.arnaudroger.re2j;

import com.google.re2j.Pattern;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.infra.Blackhole;

@State(Scope.Benchmark)
public class Re2jMatchRegex {

    public static final int FLAGS = Pattern.CASE_INSENSITIVE | Pattern.DOTALL;

    private String[] data;
    private Pattern exp1;
    private Pattern exp2;
    
    @Setup(Level.Invocation)
    public void setUpData() {
        data = Data.randomizeData();
    }
    @Setup
    public void setUpPattern() {
        exp1 = Pattern.compile(Regexes.EXP1, FLAGS);
        exp2 = Pattern.compile(Regexes.EXP2, FLAGS);
    }
    
    @Benchmark
    public void testExp1(Blackhole blackhole) {
        for(String str : data) {
            blackhole.consume(exp1.matcher(str).find());
        }
    }
    
    @Benchmark
    public void testExp2(Blackhole blackhole) {
        for(String str : data) {
            blackhole.consume(exp2.matcher(str).find());
        }
    }
    @Benchmark
    public void testCombine(Blackhole blackhole) {
        for(String str : data) {
            blackhole.consume(exp1.matcher(str).find());
            blackhole.consume(exp2.matcher(str).find());
        }
    }
}
