# Tracker - track your time
# how to install
1. just clone the git repository
# configure
1. change the variable `logs_dir` in `track.py`
2. change the variable `logs_dir` in `md_bin.py`
3. change the variable `logs_dir` in `bin_md.py`
# how to use
1. open the cloned directory in termminal 
2. type `python track.py -h` to see the list of available arguments for the tracking file it stores the data in binary file format in `logs_dir`
3. the `md_bin.py` file converts `.md` files to binary format just type `python md_bin.py -d file_name`
4. the `bin_md.py` file converts binary files to `.md` format just type `python bin_md.py -d file_name`