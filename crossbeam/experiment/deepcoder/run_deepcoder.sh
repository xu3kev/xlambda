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


save_dir=$HOME/xlambda-results/deepcoder/${config_name?}

if [ ! -e $save_dir ];
then
    mkdir -p $save_dir
fi

export CUDA_VISIBLE_DEVICES=${devices:=0}


python3 -m crossbeam.experiment.run_crossbeam \
    --config="configs/${config_name?}.py" \
    --config.save_dir=${save_dir} \
    --config.data_root="${HOME}/xlambda-data/deepcoder" \
    $@
