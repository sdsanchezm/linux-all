#!/bin/bash
# datatypes operators

n1=10
n2=21

echo "arythm===="
echo "nums: n1: $n1 and n2: $n2"
echo "adding: $((n1 + n2))"
echo "substract: " $((n2 - n1))
echo "mult: $((n1 * n2))"
echo "divide: " $((n2 / n1))
echo "mod: " $((n2 % n1))


echo "relational ops===="
echo "nums n1: $n1 and n2: $n2"
echo "$n1 > $n2: $((n1 > n2))"
echo "$n1 < $n2: $((n1 < n2))"
echo "$n1 >= $n2: $((n1 >= n2))"
echo "$n1 <= $n2: $((n1 <= n2))"
echo "$n1 == $n2: $((n1 == n2))"
echo "$n1 != $n2: $((n1 != n2))"


echo "assignation ops===="
echo "nums: $n1 and $n2"
echo "n1: $n1 += $n2:" $((n1 += n2))
echo "n1: $n1 -= $n2:" $((n1 -= n2))
echo "n1: $n1 *= $n2:" $((n1 *= n2))
echo "n1: $n1 /= $n2:" $((n1 /= n2))
echo "n1: $n1 %= $n2:" $((n1 %= n2))

