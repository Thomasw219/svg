import collections

import gym

class EpisodeLengthWrapper(gym.Wrapper):
    def __init__(self, env: gym.Env, max_episode_length: int):
        super().__init__(env)
        self._max_episode_length = max_episode_length
        self._max_episode_steps = env._max_episode_steps
        self._current_episode_length = 0

    def step(self, action):
        next_state, reward, done, info = self.env.step(action.copy())
        self._current_episode_length += 1

        if self._current_episode_length >= self._max_episode_length:
            done = True
        else:
            done = False

        return next_state, reward, done, info

    def reset(self, **kwargs):
        self._current_episode_length = 0
        return self.env.reset(**kwargs)

def flatten(d, parent_key='', sep='_'):
    items = []
    for k, v in d.items():
        new_key = parent_key + sep + k if parent_key else k
        if isinstance(v, collections.MutableMapping):
            items.extend(flatten(v, new_key, sep=sep).items())
        else:
            items.append((new_key, v))
    return dict(items)