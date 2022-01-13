a = 10

b = "Im alive"

c = 3.14

d = b'bytes'

e = [True, 777, 3.14 , 'text', b'bytes']

f = (True, 777, 3.14 , 'text', b'bytes')

lst = ["hi","bye","welcome","maybe"]
s = set(lst)

lsst = [0, 1, 2, 3, 4, 0, 1, 2, 3]
ss = frozenset(lsst)

di = dict (short='dict', long='dictionary')

print(type(a), type(b), type(c), type(d), type(e), type(f), type(s), type(ss), type(di))

f_str = 'Pyt'
s_str = 'hon'
r_str = f_str + s_str
print(r_str)

f_int = 16
s_int = 9
r_int = f_int + s_int
print(r_int)

del_a = f_int // s_int
print(del_a)

ost = f_int % s_int
print(ost)

print((7 + 12)**3 + 7 * 4 - 44 / 2**4)