// TITLE: TODO DATA isSameLength
// OBJECTIVE: TODO isSameLength
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.isSameLength;

void data()
{
   interface isSameLength
   { 
      mixin template A(alias a)
      { 
           struct A
           {
               char[][][] isInputRange;
               bool isSameLength(Range1, Range2) (
               Range1 r1,
               Range2 r2
               )
               if (isInputRange!Range1 && isInputRange!Range2);

           }

          struct B
          {
              void a()
              {
                  assert(isSameLength([1, 2, 3], [4, 5, 6]));
                  assert(isSameLength([0.3, 90.4, 23.7, 119.2], [42.6, 23.6, 95.5, 6.3]));
                  assert(isSameLength("abc", "xyz"));

                  int[] a;
                  int[] b;
                  assert(isSameLength(a, b));

                  assert(!isSameLength([1, 2, 3], [4, 5]));
                  assert(!isSameLength([0.3, 90.4, 23.7], [42.6, 23.6, 95.5, 6.3]));
                  assert(!isSameLength("abcd", "xyz"));

              }
          }

      } 
      
   } 
   
}