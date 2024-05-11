# 定义文件名
input_file = 'cusstats.txt'
output_file_simInsts = 'full0.txt'
output_file_demandMissRate = 'bpmiss0.txt'
target_indices = [3, 5, 9, 13, 17, 21, 25, 29]
emptyTo=[]
emptyMis=[]
# 打开输入文件和输出文件
with open(input_file, 'r') as input_f, open(output_file_simInsts, 'w') as output_f_simInsts, open(output_file_demandMissRate, 'w') as output_f_demandMissRate:
    # 初始化计数器
    current_index0 = 0
    current_index1 =0
    total_sim_insts = 0
    # 遍历每一行
    for line in input_f:
        # 如果包含simInsts信息
        # overallMissLatencycpu
        # committed_0total
        # overallAccessestotal
        if 'system.cpu.rename.IQFullEvents' in line:
            # 计数器加1
            current_index0 += 1
            
            # 如果当前计数器在目标次序列表中
            if current_index0 in target_indices:
                # 分割行，获取simInsts的值
                sim_insts_value = line.split()[1]
                sim_insts_valueint = int(line.split()[1])
                emptyTo.append(sim_insts_valueint)
                total_sim_insts+=sim_insts_valueint
                
                # 写入到simInsts输出文件
                output_f_simInsts.write(sim_insts_value + '\n')
        
        # 如果包含system.cpu.dcache.demandMissRate::cpu.data信息
        if 'mispredicted_0total' in line:
            # 计数器加1
            current_index1 += 1
            
            # 如果当前计数器在目标次序列表中
            if current_index1 in target_indices:
                # 分割行，获取demandMissRate的值
                demand_miss_rate_value = line.split()[1]
                
                # 写入到demandMissRate输出文件
                output_f_demandMissRate.write(demand_miss_rate_value + '\n')
                emptyMis.append(int(demand_miss_rate_value))

    #output_f_simInsts.write(str(total_sim_insts) + '\n')
    
result = [y / x * 100 for x, y in zip(emptyTo, emptyMis)]
formatted_result = ['{:.2f}'.format(value) for value in result]
avg_0 = (emptyMis[2]+emptyMis[3]+emptyMis[4]+emptyMis[5])/(emptyTo[2]+emptyTo[3]+emptyTo[4]+emptyTo[5])
avg_1 = (emptyMis[6]+emptyMis[7])/(emptyTo[6]+emptyTo[7])
print(formatted_result)
print(avg_0*100)
print(avg_1*100)