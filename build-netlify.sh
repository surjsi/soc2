#!/bin/bash

## Installing comply ##

go get -v github.com/strongdm/comply

# All dependencies are installed (from the second build, everything will be loaded from the cache)
# Let's build the documents now!
./run-comply.sh
