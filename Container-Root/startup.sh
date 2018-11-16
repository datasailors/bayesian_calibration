#!/bin/sh

# Container startup script
/bin/bash -c "jupyter notebook --allow-root --ip='0.0.0.0' --no-browser --NotebookApp.token=''"
#./run_jupyter.sh --allow-root
