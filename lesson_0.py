#1) Создать переменную типа Integer
a = 10
#2) Создать переменную типа String
b = "Im alive"
#3) Создать переменную типа Float
c = 3.14
#4) Создать переменную типа Bytes
d = b'bytes'
#5) Создать переменную типа List
e = [True, 777, 3.14 , 'text', b'bytes']
#6) Создать переменную типа Tuple
f = (True, 777, 3.14 , 'text', b'bytes')
#7) Создать переменную типа Set
lst = ["hi","bye","welcome","maybe"]
s = set(lst)
#8) Создать переменную типа Frozen set
lsst = [0, 1, 2, 3, 4, 0, 1, 2, 3]
ss = frozenset(lsst)
#9) Создать переменную типа Dict
di = dict (short='dict', long='dictionary')
#10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(type(a), type(b), type(c), type(d), type(e), type(f), type(s), type(ss), type(di))
#11) Создать 2 переменные String, создать переменную в которой суммируете эти переменные. Вывести в консоль.
f_str = 'Pyt'
s_str = 'hon'
r_str = f_str + s_str
print(r_str)
#12) Создать 2 переменные Integer, создать переменную в которой суммируете эти переменные. Вывести в консоль.
f_int = 16
s_int = 9
r_int = f_int + s_int
print(r_int)
#13) Создать переменную в которой Разделите эти переменные Int. Вывести в консоль.
div = f_int / s_int
print(div)
#14) Создать переменную в которой Умножите эти переменные Int. Вывести в консоль.
acc = f_int * s_int
print(acc)
#15) Создать переменную в которой Разделите без остатка эти переменные Int. Вывести в консоль.
del_a = f_int // s_int
print(del_a)
#16) Создать переменную в которой надо присвоить остаток от деления этих переменные Int. Вывести в консоль.
ost = f_int % s_int
print(ost)
#17) (7 + 12)  3 + 7 * 4 - 44 / 2  4 расставить точки так чтобы получилось 6884.25. Вывести в консоль.
print((7 + 12)**3 + 7 * 4 - 44 / 2**4)