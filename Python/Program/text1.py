def max_sum(num_list):
    sum_num = 0
    max_num = int(num_list[0])
    num_list = num_list.split(",")
    for i in range(len(num_list)):
        sum_num = sum_num + int(num_list[i])
        if(int(num_list[i]) > max_num):
            max_num = int(num_list[i])
    return sum_num,max_num

if __name__ == '__main__':
    num_list = input('请输入一些整数以逗号隔开：')
    sum_num,max_num = max_sum(num_list)
    print('最大的整数是：',max_num)
    print('所有整数之和是：',sum_num)
