#!/bin/bash
# Run a specific example from the starter-scala template
# Usage: ./run_example.sh [ExampleName]
# With no argument, uses fzf to interactively pick an example

SCALA_DIR="src/main/g8/src/main/scala"

if [ -z "$1" ]; then
  EXAMPLE=$(ls "$SCALA_DIR"/*.scala | xargs -n1 basename | sed 's/\.scala$//' | fzf --prompt="Pick an example: " --height=40% --border)
  [ -z "$EXAMPLE" ] && echo "No example selected." && exit 0
else
  EXAMPLE=$1
fi

echo "Running example: $EXAMPLE"
cd src/main/g8 && sbt "runMain $EXAMPLE"
