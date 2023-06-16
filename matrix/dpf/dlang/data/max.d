// TITLE: TODO DATA max
// OBJECTIVE: TODO max
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.max;

void data()
{
   interface max
   { 
      mixin template T(alias a)
      { 
           struct A
           {
               ireal length;
               real CommonType;
               ireal max(T...) (
               T args
               )
               if (T.length >= 2 && !is(CommonType!T == void));

           }
      } 
      
   } 
   
}