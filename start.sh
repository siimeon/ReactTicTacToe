#!/bin/bash

if [[ $(python --version 2>&1) == *2\.7* ]]; then
  echo "Running python 2.7";
  python -m SimpleHTTPServer 8000
fi

if [[ $(python --version 2>&1) == *3* ]]; then
  echo "Running python 3";
  python -m http.server --cgi 8000
fi
