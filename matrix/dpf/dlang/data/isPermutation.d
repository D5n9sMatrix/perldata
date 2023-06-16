// TITLE: TODO DATA isPermutation
// OBJECTIVE: TODO isPermutation
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.isPermutation;

void data()
{
   interface isPermutation
   { 
       mixin template A(alias a)
       { 
            struct A
            {
                char[][][] Flag;
                char[][][] Yes;
                char[][][] isForwardRange;
                real isInfinite;
                char[][][] binaryFun;

                bool isPermutation(Flag!("allocateGC") allocateGC, Range1, Range2) (
                Range1 r1,
                Range2 r2
                )
                if (allocateGC == Yes.allocateGC && isForwardRange!Range1 && isForwardRange!Range2 && !isInfinite!Range1 && !isInfinite!Range2);

                bool isPermutation(alias pred, Range1, Range2) (
                Range1 r1,
                Range2 r2
                )
                if (is(typeof(binaryFun!pred)) && isForwardRange!Range1 && isForwardRange!Range2 && !isInfinite!Range1 && !isInfinite!Range2);

                void gate(int input, int output)
                {
                    char[][][] allocateGC;
                    assert(isPermutation([1, 2, 3], [3, 2, 1]));
                    assert(isPermutation([1.1, 2.3, 3.5], [2.3, 3.5, 1.1]));
                    assert(isPermutation("abc", "bca"));

                    assert(!isPermutation([1, 2], [3, 4]));
                    assert(!isPermutation([1, 1, 2, 3], [1, 2, 2, 3]));
                    assert(!isPermutation([1, 1], [1, 1, 1]));

                    // Faster, but allocates GC handled memory
                    assert(isPermutation!(Yes.allocateGC)([1.1, 2.3, 3.5], [2.3, 3.5, 1.1]));
                    assert(!isPermutation!(Yes.allocateGC)([1, 2], [3, 4]));

                }
            } 
            
       } 
       
   } 
   
}