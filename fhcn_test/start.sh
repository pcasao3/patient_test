#!/bin/bash
ruby bin/rake assets:precompile
ruby bin/rails server 
