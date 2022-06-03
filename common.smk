import pandas as pd

experimental_design = pd.read_table(config["samples"]).set_index("sample_name", drop=False)
SAMPLES = experimental_design["sample_name"].tolist()