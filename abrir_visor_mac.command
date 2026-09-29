#!/bin/bash
cd "$(dirname "$0")"
echo "Gemelo digital · arrancando el servidor local en http://localhost:8080"
( sleep 1; open "http://localhost:8080/index.html" >/dev/null 2>&1 || xdg-open "http://localhost:8080/index.html" >/dev/null 2>&1 ) &
python3 -m http.server 8080
