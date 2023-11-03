filename=$1;
isDebug=$2;
compile_command="-std=c++17 -O2 -Wall -lm ${filename}.cpp -o ./output/${filename}.out"
if [ -n "${isDebug}" ]; then
  compile_command="-std=c++17 -DDEBUG -O2 -Wall -lm ${filename}.cpp -o ./output/${filename}.out"
fi
if g++ ${compile_command}; then
  ./output/"${filename}.out" < ./input.txt
else
  echo "Compilation failed"
fi