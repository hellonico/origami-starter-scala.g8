#!/bin/bash
# Run a specific example from the starter-scala template
# Usage: ./run_example.sh [ExampleName]
# Example: ./run_example.sh CartoonCam
#          ./run_example.sh CaffeCam
#          ./run_example.sh CannyFast
#          ./run_example.sh BasicThresholding
#          ./run_example.sh JustMat

EXAMPLE=${1:-CartoonCam}

echo "Running example: $EXAMPLE"
cd src/main/g8 && sbt "runMain $EXAMPLE"
