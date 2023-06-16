// TITLE: TODO DATA equal
// OBJECTIVE: TODO equal
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.equal;

void data()
{
   interface equal
   { 
      mixin template A(alias a)
      { 
           mixin template equal(alias pred)
           { 
                void pred()
                {
                    char[][][] isClose;
                    int[4] a = [ 1, 2, 4, 3 ];
                    assert(!equal(a[], a[1..$]));
                    assert(equal(a[], a[]));
                    assert(equal!((a, b) => a == b)(a[], a[]));

                    // different types
                    double[4] b = [ 1.0, 2, 4, 3];
                    assert(!equal(a[], b[1..$]));
                    assert(equal(a[], b[]));

                    // predicated: ensure that two vectors are approximately equal
                    double[4] c = [ 1.0000000005, 2, 4, 3];
                    assert(equal!isClose(b[], c[]));

                }

               void predEqual()
               {
                   char[][][] iota;
                   char[][][] chunks;
                   assert(equal!(equal!equal)(
                   [[[0, 1], [2, 3]], [[4, 5], [6, 7]]],
                   iota(0, 8).chunks(2).chunks(2)
                   ));
               }

           } 
           
      } 
      
   } 
   
}