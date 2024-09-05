import datetime

# Generate a file with the current timestamp
timestamp = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
with open("timestamped_file.txt", "w") as f:
    f.write(f"File generated at: {timestamp}")
