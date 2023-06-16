// TITLE: TODO DATA levenstheinDistance
// OBJECTIVE: TODO levenstheinDistance
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.levenstheinDistance;

void data()
{
   interface levenstheinDistance
   { 
      mixin template T(alias a)
      { 
           struct A
           {
               char[][][] size_t;
               char[][][] isForwardRange;
               char[][][] isConvertibleToString;

               size_t levenshteinDistance(alias equals, Range1, Range2) (
               Range1 s,
               Range2 t
               )
               if (isForwardRange!Range1 && isForwardRange!Range2);

               size_t levenshteinDistance(alias equals, Range1, Range2) (
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
                  char[][][] toUpper;
                  char[][][] filter;
                  writeln(levenshteinDistance("cat", "rat")); // 1
                  writeln(levenshteinDistance("parks", "spark")); // 2
                  writeln(levenshteinDistance("abcde", "abcde")); // 0
                  writeln(levenshteinDistance("abcde", "abCde")); // 1
                  writeln(levenshteinDistance("kitten", "sitting")); // 3
                  assert(levenshteinDistance!((a, b) => toUpper(a) == toUpper(b))
                  ("parks", "SPARK") == 2);
                  writeln(levenshteinDistance("parks".filter!"true", "spark".filter!"true")); // 2
                  writeln(levenshteinDistance("ID", "I♥D")); // 1

              }
          }
           
      } 
      
   } 
   
}