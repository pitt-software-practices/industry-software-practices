
# code:  https://github.com/pitt-software-practices/LAMMPS_tools code
# branch: profile-test

# install this package in a VENV and activate it!

# install profiling requirements:
pip install -R profiling_requirements.txt

# run the slow command:
python test.py ./mof_w_alpha-maltose-2x2x1.cif

# can you use any of these commands to tell me why this is slow:
# top
# ps: `ps aux | grep “python”`
# time: `time python {mycommand}.py`
# iostat –c

# are we disk-bound, memory-bound, cpu-bound, or network-bound?

# run the slow command with the python profiler:
python -m cProfile -o test.pstats -s tottime test.py ./mof_w_alpha-maltose.cif

# what can we tell about this?
gprof2dot -f pstats test.pstats | dot -Tpng -o output.png

# lets see a more complicated data viz:
snakeviz ./test.pstats
