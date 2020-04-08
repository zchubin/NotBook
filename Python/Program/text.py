intCount = []  #用来记录列表中的int元素个数
upstrCount = [] #记录str元素个数
lowstrCount=[]
otherCount = []
def StatisticalNumber(a):
    for i in a:
        if i.isdigit():
            intCount.append(i)
        elif i.islower():
            lowstrCount.append(i)
        elif i.isupper():
            upstrCount.append(i)
        else:
            otherCount.append(i)
    return intCount,upstrCount,lowstrCount,otherCount
a=input('请输入一个字符串：')

a,b,c,d=StatisticalNumber(a)
print('数字的个数：{}'.format(len(a)))
print('大写字母的个数：{}'.format(len(b)))
print('小写字母的个数：{}'.format(len(c)))
print('其他字符的个数：{}'.format(len(d)))
a=tuple(a)
b=tuple(b)
c=tuple(c)
d=tuple(d)
print(a,b,c,d)
