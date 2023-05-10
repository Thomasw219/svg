python train.py env=url_cheetah seed=0 &
python train.py env=url_cheetah seed=1 &
wait
python train.py env=url_cheetah seed=2 &
python train.py env=url_cheetah seed=3 &
wait
python train.py env=url_cheetah seed=4 &
python train.py env=url_ant seed=0 &
wait
python train.py env=url_ant seed=1 &
python train.py env=url_ant seed=2 &
wait
python train.py env=url_ant seed=3 &
python train.py env=url_ant seed=4 &
wait
python train.py env=url_walker2d seed=0 &
python train.py env=url_walker2d seed=1 &
wait
python train.py env=url_walker2d seed=2 &
python train.py env=url_walker2d seed=3 &
wait
python train.py env=url_walker2d seed=4 &
python train.py env=url_hopper seed=0 &
wait
python train.py env=url_hopper seed=1 &
python train.py env=url_hopper seed=2 &
wait
python train.py env=url_hopper seed=3 &
python train.py env=url_hopper seed=4 &
wait
python train.py env=url_pendulum seed=0 &
python train.py env=url_pendulum seed=1 &
wait
python train.py env=url_pendulum seed=2 &
python train.py env=url_pendulum seed=3 &
wait
python train.py env=url_pendulum seed=4 &
