# 打开第一个文件，读取数据并计算总和
with open("total0.txt", "r") as file1, open("total1.txt", "r") as file2:
    data1 = [int(line.strip()) for line in file1]
    data2 = [int(line.strip()) for line in file2]

sum1 = sum(data1)
sum2 = sum(data2)


print(sum1)
print(sum2)
# 如果第二个文件中的和不为零，则进行除法操作，否则输出错误信息
if sum2 != 0:
    result = sum1 / sum2
    print("结果:", result)
else:
    print("除数不能为零！")
