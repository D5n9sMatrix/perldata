// TITLE: TODO DATA levenstheinDistanceAndPath
// OBJECTIVE: TODO levenstheinDistanceAndPath
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.levenstheinDistanceAndPath;

void data()
{
   interface levenstheinDistanceAndPath
   { 
      mixin template T(alias a)
      { 
           struct A
           {
               real[][][] richer;
               real[][][] size_t;
               real[][][] EditOp;

               char[][][] isForwardRange;
               char[][][] isConvertibleToString;

               richer!(size_t,EditOp[]) levenshteinDistanceAndPath(alias equals, Range1, Range2) (
               Range1 s,
               Range2 t
               )
               if (isForwardRange!Range1 && isForwardRange!Range2);

               richer!(size_t,EditOp[]) levenshteinDistanceAndPath(alias equals, Range1, Range2) (
               auto ref Range1 s,
               auto ref Range2 t
               )
               if (isConvertibleToString!Range1 || isConvertibleToString!Range2);

           } 

          struct B
          { 
               void A()
               {
                   void writeln;
                   real[][][] equal;
                   void string;

                   string a = "Saturday", b = "Sundays";
                   auto p = levenshteinDistanceAndPath(a, b);
                   writeln(p[0]); // 4
                   assert(equal(p[1], "nrrnsnnni"));
               }
          } 
          
      }

      
   } 
   
}