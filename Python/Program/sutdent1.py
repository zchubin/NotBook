stuinfos = []  # 定义一个列表,存放学生信息

while True:
    print("="*30)
    print("""
     学管理系统 V1.0
     1. 添加学生信息
     2. 删除学生信息
     3. 修改学生信息
     4. 显示学生信息
     0. 退出学生系统
    """)
    print("="*30)
    num = input("请输入功能所对应的数字:")

    if num == '1':
        stuinfo = {}  # 字典存放临时信息
        name = input("请输入学生姓名:")
        sex = input("请输入学生性别:")
        phone = input("请输入学生电话:")
        stuinfo['name'] = name
        stuinfo['sex'] = sex
        stuinfo['phone'] = phone
        stuinfos.append(stuinfo)
        print(stuinfos)
    elif num == '2':
        ID = int(input("请输入需要删除的学生序号:"))
        del stuinfos[ID-1]
        print(stuinfos)
    elif num == '3':
        ID = int(input("请输入需要修改的学生序号:"))-1
        stuinfos[ID]['name'] = input("请输入学生姓名:")
        stuinfos[ID]['sex'] = input("请输入学生性别:")
        stuinfos[ID]['phone'] = input("请输入学生电话:")
        print(stuinfos)
    elif num == '4':
        print("-"*30)
        print("序号     姓名    性别    电话")
        print("-"*30)
        i = 1
        for stuinfo in stuinfos:
            print(("%d     %s      %s      %s")
                  % (i, stuinfo['name'], stuinfo['sex'], stuinfo['phone']))
    elif num == '0':
        break
