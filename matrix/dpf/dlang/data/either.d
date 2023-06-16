// TITLE: TODO DATA pop front
// OBJECTIVE: TODO pop front
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.either;

void data()
{
   interface either
   { 
      mixin template A(alias a)
      {
          char[][][] CommonType;
          char[][][] length;
          real[][][] allSatisfy;
          real[][][] ifTestable;

          CommonType!(T,Ts) either(alias pred, T, Ts...) (
          T first,
          lazy Ts alternatives
          )
          if (alternatives.length >= 1 && !is(CommonType!(T, Ts) == void) && allSatisfy!(ifTestable, T, Ts));

          void a()
          {
              void writeln;
              const a = 1;
              const b = 2;
              auto ab = either(a, b);
              static assert(is(typeof(ab) == const(int)));
              writeln(ab); // a

              auto c = 2;
              const d = 3;
              auto cd = either!(a => a == 3)(c, d); // use predicate
              static assert(is(typeof(cd) == int));
              writeln(cd); // d

              auto e = 0;
              const f = 2;
              auto ef = either(e, f);
              static assert(is(typeof(ef) == int));
              writeln(ef); // f
          }

          void Aa()
          {
              void writeln;
              immutable p = 1;
              immutable q = 2;
              auto pq = either(p, q);
              static assert(is(typeof(pq) == immutable(int)));
              writeln(pq); // p

              writeln(either(3, 4)); // 3
              writeln(either(0, 4)); // 4
              writeln(either(0, 0)); // 0
              writeln(either("", "a")); // ""
          }
          void CommonType()
          {
              void writeln;
              void string;
              string r = null;
              writeln(either(r, "a")); // "a"
              writeln(either("a", "")); // "a"

              immutable s = [1, 2];
              writeln(either(s, s)); // s

              writeln(either([0, 1], [1, 2])); // [0, 1]
              writeln(either([0, 1], [1])); // [0, 1]
              writeln(either("a", "b")); // "a"

              static assert(!__traits(compiles, either(1, "a")));
              static assert(!__traits(compiles, either(1.0, "a")));
              static assert(!__traits(compiles, either('a', "a")));

          }

      }


   } 
   
}