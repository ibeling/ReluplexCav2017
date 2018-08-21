import statistics
import argparse
import numpy as np
import matplotlib
matplotlib.use('Agg')
from matplotlib import pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages

parser = argparse.ArgumentParser()
parser.add_argument('-f', '--format', default='pdf', type=str, help='Table export format')
args = parser.parse_args()

fig, ax = plt.subplots()

# hide axes
fig.patch.set_visible(False)
ax.axis('off')
ax.axis('tight')
ax.xaxis.set_visible(False) 
ax.yaxis.set_visible(False)


benchmarks = ['1', '2', '3', '4', '5', '6_upper', '6_lower', '7', '8', '9', '10']

columnNames = ('Benchmark Name', 'Total Time', 'Number Solved', 'Total Splits')
cell_text = []

print("The following tests timed out:")
for prop in benchmarks:
    totaltime = 0
    totalsplits = 0
    totalnumber = 0
    benchmarkname = 'ACAS Benchmark ' + prop

    for idx in range(45):
        try:
            filename = "dump_acas"+prop+"_"+str(idx)+".txt"
            fp = open(filename)
            count_thisfile = 0
            for i, line in enumerate(fp):
                if 'Total run time' in line:
                    splitted = line.split()
                    totalnumber += 1
                    totaltime += int(splitted[3])
                    count_thisfile += 1
                if 'Number of explored states' in line:
                    splitted = line.split()
                    totalsplits += int(splitted[4])
            if not count_thisfile == 1:
                print(filename)
            fp.close()
        except:
            pass



    row = [benchmarkname, totaltime, totalnumber, totalsplits]
    cell_text.append(row)

the_table = plt.table(cellText=cell_text,
                      colLabels=columnNames,
                      loc='center')

plt.tight_layout()

if args.format == 'pdf':
    PP = PdfPages('table_reluplex.pdf')
    plt.savefig(PP, format='pdf')
    PP.close()
else:
    plt.savefig("table_reluplex."+args.format, format=args.format)
