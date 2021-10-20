#!/usr/bin/env python3

import pandas as pd

df = pd.read_json("ring_test_latest.json", orient="records")
df.to_csv("ring_test_latest.csv")
