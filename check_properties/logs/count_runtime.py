import statistics

totaltime = 0
# totaldelta = 0.0
totalnumber = 0

for idx in range(45):
  try:
    filename = "dump_acas4_"+str(idx)+".txt"
    fp = open(filename)
    count_thisfile = 0
    for i, line in enumerate(fp):
      if 'Total run time' in line:
        splitted = line.split()
        totalnumber += 1
        totaltime += int(splitted[3])
        count_thisfile += 1
    if not count_thisfile == 1:
      print(filename)
    fp.close()
  except:
    pass

print("total time ", float(totaltime)/1000.0)
print("total number ", totalnumber)
