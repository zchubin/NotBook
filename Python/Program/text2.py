#!/usr/bin/env python
#  import os

#  os.mkdir("text")
#  print(os.getcwd())

#  year = int( input("请输入一个数字:") )
#
#  if year%400==0 or (year%4==0 and year%100!=0):
#      print(year,"是闰年")
#
#  def func(num):
#      result =1
#      for i in range(1,num+1):
#          result *=i
#      print(result)
#  func(10)
#
#  def digui(num):
#      if num>1:
#          return num*digui(num-1)
#      else:
#          return 1
#  print( digui(10) )
#
#  def digui(num):
#      print("*"*num)
#      if num<5:
#          digui(num+1)
#      else:
#          print("******")
#      print("*"*num)
#  digui(1)
#
#  calc = lambda x,y : x*y if x>y else x/y
#  print(calc(10,20))
#

def ball():
    while True:
        try:
            pi = 3.14
            r = float(input("请输入球体半径："))
            if r <= 0:
                print("输入的球体半径不能小于0！")
            else:
                print("球体的直径是:%.3f"%(r*2))
                print("球体的圆周长是:%.3f"%(2*pi*r))
                print("球体的表面积是:%.3f"%(4*pi*(r**2)))
                print("球体的体积是：%.3f"%((4/3)*pi*pow(r,3)))
                break
        except Exception as e:
            raise e
ball()

Set_number = 6
Guess_number = int(input("请输入猜测的数："))
while(Guess_number < Set_number or Guess_number > Set_number):
    if Guess_number > Set_number:
        print("遗憾，太大了")
    elif Guess_number < Set_number:
        print("遗憾，太小了")
    Guess_number = int(input("请重新输入猜测的数："))
print("你猜中了!!!")
