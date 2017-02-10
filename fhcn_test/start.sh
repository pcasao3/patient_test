#!/bin/bash
ruby bin/rake assets:precompile
ruby bin/rails server -p 3030 -e production -d
