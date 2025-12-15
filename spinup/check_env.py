import gym
# eg: Swimmer-v2, Swimmer-v3
envs = [e.id for e in gym.envs.registry.all()]
print(envs)