# 打开两个文件，分别读取数据
with open("miss1.txt", "r") as file1, open("total1.txt", "r") as file2:
    data1 = file1.readlines()
    data2 = file2.readlines()

# 逐行进行除法操作，并将结果写入新文件
with open("rate1.txt", "w") as result_file:
    for line1, line2 in zip(data1, data2):
        num1 = int(line1.strip())
        num2 = int(line2.strip())
        result = num1 / num2
        result_file.write(f"{result}\n")
