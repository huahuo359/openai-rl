#!/bin/bash

python -m spinup.run ppo \
    --exp_name ppo_Swimmer-v3 \
    --env Swimmer-v3 \
    --clip_ratio 0.1 0.2 \
    --hid "[32,32]" "[64,32]" \
    --act torch.nn.Tanh \
    --seed 0 10 20 \
    --dt "2025-12-12" \
    --data_dir "/Users/lyh/Downloads/Documents/论文工作/PhysSwimmer/openai-rl/data/Swimmer-v3"