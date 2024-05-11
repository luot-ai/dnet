# 定义文件名
input_file = 'winostats.txt'
output_file_simInsts = 'simInsts_statistics1.txt'
output_file_demandMissRate = 'demandMissRate_statistics1.txt'
target_indices = [3, 5, 9, 13, 17, 21, 25, 29]

# 打开输入文件和输出文件
with open(input_file, 'r') as input_f, open(output_file_simInsts, 'w') as output_f_simInsts, open(output_file_demandMissRate, 'w') as output_f_demandMissRate:
    # 初始化计数器
    current_index0 = 0
    current_index1 =0
    total_sim_insts = 0
    # 遍历每一行
    for line in input_f:
        # 如果包含simInsts信息
        if 'simInsts' in line:
            # 计数器加1
            current_index0 += 1
            
            # 如果当前计数器在目标次序列表中
            if current_index0 in target_indices:
                # 分割行，获取simInsts的值
                sim_insts_value = line.split()[1]
                sim_insts_valueint = int(line.split()[1])
                total_sim_insts+=sim_insts_valueint
                
                # 写入到simInsts输出文件
                output_f_simInsts.write(sim_insts_value + '\n')
        
        # 如果包含system.cpu.dcache.demandMissRate::cpu.data信息
        if 'system.cpu.dcache.overallMissRate' in line:
            # 计数器加1
            current_index1 += 1
            
            # 如果当前计数器在目标次序列表中
            if current_index1 in target_indices:
                # 分割行，获取demandMissRate的值
                demand_miss_rate_value = line.split()[1]
                
                # 写入到demandMissRate输出文件
                output_f_demandMissRate.write(demand_miss_rate_value + '\n')

    output_f_simInsts.write(str(total_sim_insts) + '\n')