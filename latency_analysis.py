import numpy as np

# Sample outputs:
#   Round took 2.423261ms
#   Round took 341.019µs

# All latency measurements should be in ms.
latencies = []

with open('log.out') as log:
    line = log.readline()
    while line != '':  # The EOF char is an empty string
        # Extract the latency and its unit of time.
        latency_unparsed = line.split(" ")[2]

        # Remove the unit of time and add the latency to a list,
        # converting the latency to milliseconds if it is in microseconds.
        if latency_unparsed.find('µs') != -1:
            latencies.append(float(latency_unparsed[0:(len(latency_unparsed) - 3)]) / 1000)
        elif latency_unparsed.find('ms') != -1:
            print(latency_unparsed)
            latencies.append(float(latency_unparsed[0:(len(latency_unparsed) - 3)]))
        else:
            print("Error, parsing code does not work")
            exit()

        line = log.readline()

print(latencies)

print("Median and 99th percentile in milliseconds:")
print(np.percentile(latencies, 50))
print(np.percentile(latencies, 99))
