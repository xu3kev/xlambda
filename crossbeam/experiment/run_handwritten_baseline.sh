#!/bin/bash

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

timeout=10800
num_process=30

python3 -m crossbeam.experiment.run_baseline_synthesizer_handwritten_tasks \
  --domain=deepcoder \
  --timeout=${timeout} \
  --num_process=${num_process} \
  --json_results_file="handwritten_baseline_timeout${timeout}.json" \
  --verbose
  $@
