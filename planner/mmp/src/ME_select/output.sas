begin_version
3
end_version
begin_metric
0
end_metric
29
begin_variable
var0
-1
2
Atom clear(a)
NegatedAtom clear(a)
end_variable
begin_variable
var1
-1
2
Atom clear(b)
NegatedAtom clear(b)
end_variable
begin_variable
var2
-1
2
Atom clear(c)
NegatedAtom clear(c)
end_variable
begin_variable
var3
-1
2
Atom clear(d)
NegatedAtom clear(d)
end_variable
begin_variable
var4
-1
2
Atom handempty()
NegatedAtom handempty()
end_variable
begin_variable
var5
-1
2
Atom holding(a)
NegatedAtom holding(a)
end_variable
begin_variable
var6
-1
2
Atom holding(b)
NegatedAtom holding(b)
end_variable
begin_variable
var7
-1
2
Atom holding(c)
NegatedAtom holding(c)
end_variable
begin_variable
var8
-1
2
Atom holding(d)
NegatedAtom holding(d)
end_variable
begin_variable
var9
-1
2
Atom on(a, a)
NegatedAtom on(a, a)
end_variable
begin_variable
var10
-1
2
Atom on(a, b)
NegatedAtom on(a, b)
end_variable
begin_variable
var11
-1
2
Atom on(a, c)
NegatedAtom on(a, c)
end_variable
begin_variable
var12
-1
2
Atom on(a, d)
NegatedAtom on(a, d)
end_variable
begin_variable
var13
-1
2
Atom on(b, a)
NegatedAtom on(b, a)
end_variable
begin_variable
var14
-1
2
Atom on(b, b)
NegatedAtom on(b, b)
end_variable
begin_variable
var15
-1
2
Atom on(b, c)
NegatedAtom on(b, c)
end_variable
begin_variable
var16
-1
2
Atom on(b, d)
NegatedAtom on(b, d)
end_variable
begin_variable
var17
-1
2
Atom on(c, a)
NegatedAtom on(c, a)
end_variable
begin_variable
var18
-1
2
Atom on(c, b)
NegatedAtom on(c, b)
end_variable
begin_variable
var19
-1
2
Atom on(c, c)
NegatedAtom on(c, c)
end_variable
begin_variable
var20
-1
2
Atom on(c, d)
NegatedAtom on(c, d)
end_variable
begin_variable
var21
-1
2
Atom on(d, a)
NegatedAtom on(d, a)
end_variable
begin_variable
var22
-1
2
Atom on(d, b)
NegatedAtom on(d, b)
end_variable
begin_variable
var23
-1
2
Atom on(d, c)
NegatedAtom on(d, c)
end_variable
begin_variable
var24
-1
2
Atom on(d, d)
NegatedAtom on(d, d)
end_variable
begin_variable
var25
-1
2
Atom ontable(a)
NegatedAtom ontable(a)
end_variable
begin_variable
var26
-1
2
Atom ontable(b)
NegatedAtom ontable(b)
end_variable
begin_variable
var27
-1
2
Atom ontable(c)
NegatedAtom ontable(c)
end_variable
begin_variable
var28
-1
2
Atom ontable(d)
NegatedAtom ontable(d)
end_variable
0
begin_state
0
0
0
0
0
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
0
0
0
0
end_state
begin_goal
3
13 0
18 0
23 0
end_goal
40
begin_operator
pickup a
1
4 0
3
0 0 0 1
0 5 -1 0
0 25 0 1
1
end_operator
begin_operator
pickup b
1
4 0
3
0 1 0 1
0 6 -1 0
0 26 0 1
1
end_operator
begin_operator
pickup c
1
4 0
3
0 2 0 1
0 7 -1 0
0 27 0 1
1
end_operator
begin_operator
pickup d
1
4 0
3
0 3 0 1
0 8 -1 0
0 28 0 1
1
end_operator
begin_operator
putdown a
0
2
0 0 -1 0
0 25 -1 0
1
end_operator
begin_operator
putdown b
0
2
0 1 -1 0
0 26 -1 0
1
end_operator
begin_operator
putdown c
0
2
0 2 -1 0
0 27 -1 0
1
end_operator
begin_operator
putdown d
0
2
0 3 -1 0
0 28 -1 0
1
end_operator
begin_operator
stack a a
2
0 0
5 0
2
0 4 -1 0
0 9 -1 0
1
end_operator
begin_operator
stack a b
2
1 0
5 0
3
0 0 -1 0
0 4 -1 0
0 10 -1 0
1
end_operator
begin_operator
stack a c
2
2 0
5 0
3
0 0 -1 0
0 4 -1 0
0 11 -1 0
1
end_operator
begin_operator
stack a d
2
3 0
5 0
3
0 0 -1 0
0 4 -1 0
0 12 -1 0
1
end_operator
begin_operator
stack b a
2
0 0
6 0
3
0 1 -1 0
0 4 -1 0
0 13 -1 0
1
end_operator
begin_operator
stack b b
2
1 0
6 0
2
0 4 -1 0
0 14 -1 0
1
end_operator
begin_operator
stack b c
2
2 0
6 0
3
0 1 -1 0
0 4 -1 0
0 15 -1 0
1
end_operator
begin_operator
stack b d
2
3 0
6 0
3
0 1 -1 0
0 4 -1 0
0 16 -1 0
1
end_operator
begin_operator
stack c a
2
0 0
7 0
3
0 2 -1 0
0 4 -1 0
0 17 -1 0
1
end_operator
begin_operator
stack c b
2
1 0
7 0
3
0 2 -1 0
0 4 -1 0
0 18 -1 0
1
end_operator
begin_operator
stack c c
2
2 0
7 0
2
0 4 -1 0
0 19 -1 0
1
end_operator
begin_operator
stack c d
2
3 0
7 0
3
0 2 -1 0
0 4 -1 0
0 20 -1 0
1
end_operator
begin_operator
stack d a
2
0 0
8 0
3
0 3 -1 0
0 4 -1 0
0 21 -1 0
1
end_operator
begin_operator
stack d b
2
1 0
8 0
3
0 3 -1 0
0 4 -1 0
0 22 -1 0
1
end_operator
begin_operator
stack d c
2
2 0
8 0
3
0 3 -1 0
0 4 -1 0
0 23 -1 0
1
end_operator
begin_operator
stack d d
2
3 0
8 0
2
0 4 -1 0
0 24 -1 0
1
end_operator
begin_operator
unstack a a
2
0 0
9 0
2
0 4 0 1
0 5 -1 0
1
end_operator
begin_operator
unstack a b
2
0 0
10 0
2
0 4 0 1
0 5 -1 0
1
end_operator
begin_operator
unstack a c
2
0 0
11 0
2
0 4 0 1
0 5 -1 0
1
end_operator
begin_operator
unstack a d
2
0 0
12 0
2
0 4 0 1
0 5 -1 0
1
end_operator
begin_operator
unstack b a
2
1 0
13 0
2
0 4 0 1
0 6 -1 0
1
end_operator
begin_operator
unstack b b
2
1 0
14 0
2
0 4 0 1
0 6 -1 0
1
end_operator
begin_operator
unstack b c
2
1 0
15 0
2
0 4 0 1
0 6 -1 0
1
end_operator
begin_operator
unstack b d
2
1 0
16 0
2
0 4 0 1
0 6 -1 0
1
end_operator
begin_operator
unstack c a
2
2 0
17 0
2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
unstack c b
2
2 0
18 0
2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
unstack c c
2
2 0
19 0
2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
unstack c d
2
2 0
20 0
2
0 4 0 1
0 7 -1 0
1
end_operator
begin_operator
unstack d a
2
3 0
21 0
2
0 4 0 1
0 8 -1 0
1
end_operator
begin_operator
unstack d b
2
3 0
22 0
2
0 4 0 1
0 8 -1 0
1
end_operator
begin_operator
unstack d c
2
3 0
23 0
2
0 4 0 1
0 8 -1 0
1
end_operator
begin_operator
unstack d d
2
3 0
24 0
2
0 4 0 1
0 8 -1 0
1
end_operator
0
