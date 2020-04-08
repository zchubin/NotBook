# -*- coding: UTF-8 -*-
import re
import os

folder_name = './people.data'


def print_menu():
    print("=" * 29)
    print("=          测试系统         =")
    print("="+" " * 27+"=")
    print("=     1.   添加名片         =")
    print("=     2.   删除名片         =")
    print("=     3.   修改名片         =")
    print("=     4.   显示所有信息     =")
    print("=     5.   保存名片         =")
    print("=     6.   退出系统         =")
    print("=" * 29)
    print("")


# 1.   添加名片
people_list = []


def add_info():
    print("====添加名片=================")
    new_name = input("=请输入姓名：")
    new_phone = input("=请输入电话：")
    new_QQ = input("=请输入QQ号码：")
    new_Email = input("=请输入Email：")
    print("====输入结束=================")

    new_infos = {}
    new_infos['name'] = new_name
    new_infos['phone'] = new_phone
    new_infos['QQ'] = new_QQ
    new_infos['Email'] = new_Email
    people_list.append(new_infos)

    print("++++确认信息+++++++++++++++++")
    print("+"+str(people_list)+"+")
    print("")

# 2.   删除名片


def del_list(people_list):
    del_num = int(input("请输入要删除的序号：")) - 1
    print("正在执行[=========================！OK]")
    del people_list[del_num]
    print("已删除 -_-|||")

# 3.   修改名片


def change_list():
    people_id = int(input("请输入要修改的序号："))
    print("====重新添加名片=============")
    new_name = input("请输入新的姓名：")
    new_phone = input("请输入新的电话：")
    new_QQ = input("请输入新的QQ号码：")
    new_Email = input("请输入新的Email：")
    print("====输入结束=================")

    people_list[people_id - 1]['name'] = new_name
    people_list[people_id - 1]['phone'] = new_phone
    people_list[people_id - 1]['QQ'] = new_QQ
    people_list[people_id - 1]['Email'] = new_Email

    print("++++确认信息+++++++++++++++++")
    print("+"+str(people_list)+"+")
    print("")
    print("名片信息已修改")

# 4.   获取名片详细信息


def people_mess():
    print("+" * 56)
    print("+  详细信息如下表"+"+"*39)
    print("+" * 56)
    print("+  序号 姓名        电话        QQ        Email        +")
    i = 1
    for temp in people_list:
        print("+  %d   %s  %s  %s  %s  " %
              (i, temp['name'], temp['phone'], temp['QQ'], temp['Email']))
        i += 1
    print("+" * 56)

# 5.   保存名片


def save_to_file():
    file = open("people.data", "w")
    print("="*30)
    file.write(str(people_list))
    quit_new = input("=确定保存？？？    " + "(Yes! / No?)")
    if quit_new == "yes":
        print("正在执行[=========================！OK]")
        print("")
        print("")
        file.close()
    else:
        print("数据珍贵及时保存！！！ ")


# 读取data信息到列表

def read_data():
    global people_infos
    file = open("people.data")
    content = file.read()
    people_infos = eval(content)
    file.close()


def main():
    read_data()
    people_list = people_infos
    while True:
        print_menu()
        key = input("请输入对应功能的数字,,^_^,,：")
        if key == "1":
            add_info()
        elif key == "2":
            del_list(people_infos)
        elif key == "3":
            change_list()
        elif key == "4":
            people_mess()
        elif key == "5":
            save_to_file()
        elif key == "6":
            quit_new = input("确认要退出？    " + "(Yes! / No?)")
            if quit_new == "yes":
                print("")
                print("=+"*15)
                print("")
                print("     god白~您嘞~~")
                print("")
                print("")
                break
            else:
                print("请继续你的表演：：： ")
        else:
            print("")
            print("")
            print("/" * 30)
            print("/"+" " * 28+"/")
            print("/       shao年从新来过 =_=   /")
            print("/"+" " * 28+"/")
            print("/" * 30)
            print("")
            print("")


main()

# 写作目的：实践python所学！完成一个项目！
#
# 完成时间： 2019年12月21日下午3：33，耗时：3H写完+4H检查需修改，查找资料+2H添加自己特色！& ……………^_^
#
# 同步GitHub: https://github.com/zchubin/NotBook.git
#
# 创建people.data----[{'name': 'li', 'phone': '11111111111', 'QQ': '111111111', 'Email': 'li.outlook.com'}]
