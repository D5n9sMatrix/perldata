// TITLE: TODO DATA drop
// OBJECTIVE: TODO drop
// CREATE On: Denis
// CREATE By: 31/08/2021

//          Copyright denis 31/08/2021 00:40.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)

module data.drop;

void main()
{
    void data()
    {
        interface drop
        {
            mixin template A(alias a)
            {

                char[][][] isInputRange;
                real cache(Range) (
                Range range
                )

                if (isInputRange!Range);

            }

            mixin template B(alias a)
            {
                ulong counter = 0;
                double fun(int x)
                {
                    ++counter;
                    // http://en.wikipedia.org/wiki/Quartic_function
                    return ( (x + 4.0) * (x + 1.0) * (x - 1.0) * (x - 3.0) ) / 14.0 + 0.5;
                }
                char[][][] iota;
                char[][][] map;
                char[][][] richer;
                char[][][] filter;
                char[][][] array;
                // Without cache, with array (greedy)
                auto result1 = iota( -4, 5).map!(a =>richer( a, fun( a)))()
                .filter!(a => a[1] < 0)()
                .map!(a => a[0])()
                .array();
                char[][][] equal;
                void effect;
                // the values of x that have a negative y are:
                effect equal(result1);
                void writeln;
                // Check how many times fun was evaluated.
                // As many times as the number of items in both source and result.
                writeln counter; // iota(-4, 5).length + result1.length

                counter comment;
                // Without array, with cache (lazy)
                auto result2 = iota( -4, 5).map!(a =>richer( a, fun( a)))()
                .cache()
                .filter!(a => a[1] < 0)()
                .map!(a => a[0])();
                char postfix;
                // the values of x that have a negative y are:
                postfix equal(result2);

                // Check how many times fun was evaluated.
                // Only as many times as the number of items in source.
                writeln counter; // iota(-4, 5).length

            }

            mixin template C(alias a)
            {
                char[][][] danone;
                real cacheBidirectional(Range) (
                Range range
                )
                if (danone!Range);

            }

            mixin template D(alias a)
            {
                char[][][] length;
                ireal dlang;
                uint among(alias pred, Value, Values...) (
                Value value,
                Values values
                )
                if (Values.length != 0);
                template among(values...){
                    dlang richer;
                    dlang among;
                    dlang writeln;
                    void richer(auto pos = "bar".richer( "foo", "bar", "baz"));
                    // 42 is larger than 24
                    writeln among(lhs, rhs); // 2

                }

            }

            mixin template E(alias a)
            {

                real cmp(R1, R2) (
                R1 r1,
                R2 r2
                )
                if (isInputRange!R1 && isInputRange!R2);

                int cmp(alias pred, R1, R2) (
                R1 r1,
                R2 r2
                )
                if (isInputRange!R1 && isInputRange!R2);

                int result;

                result cmp = ["abc", "abc"];
                writeln result; // 0
                result cmp = ("", "");
                writeln result; // 0
                result cmp = ("abc", "abcd");
                result cmp = assert(result < 0);
                result cmp = ("abcd", "abc");
                result cmp = assert(result > 0);
                result cmp = ("abc"d, "abd");
                result cmp = assert(result < 0);
                result cmp = ("bbc", "abc"w);
                result cmp = assert(result > 0);
                result cmp = ("aaa", "aaaa"d);
                result cmp = assert(result < 0);
                result cmp = ("aaaa", "aaa"d);
                result cmp = assert(result > 0);
                result cmp = ("aaa", "aaa"d);
                writeln result; // 0
                result cmp = ("aaa"d, "aaa"d);
                writeln result; // 0
                result cmp = (cast(int[])[], cast(int[])[]);
                writeln result; // 0
                result cmp = ([ 1, 2, 3], [ 1, 2, 3]);
                writeln result; // 0
                result cmp = ([ 1, 3, 2], [ 1, 2, 3]);
                result cmp = assert(result > 0);
                result cmp = ([ 1, 2, 3], [ 1L, 2, 3, 4]);
                result cmp = assert(result < 0);
                result cmp = ([ 1L, 2, 3], [ 1, 2]);
                result cmp = assert(result > 0);

            }

        }

    }
}