def plus(list0):
    s = 0
    for i in list0:
        s += i
    return s


def plus1(list0):
    s = 0
    i = len(list0)
    while i > 0:
        s += list0[i - 1]
        i -= 1
    return s


def plus2(list0):
    i = len(list0)
    s = list0[0]
    if i == 1:
        s = list0[0]
    else:
        s += plus2(list0[1:])
    return s