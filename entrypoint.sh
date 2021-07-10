#!/bin/sh -l

COVERAGE_LEVEL=$1

COVERAGE=$(go tool cover -func coverage.out | awk '/total/ {print $3}' | (sed s/%//) | awk '{ print $1 }')

awk -v COVERAGE_LEVEL="$COVERAGE_LEVEL" -v COVERAGE=$COVERAGE -f /code-condition.awk

echo "::set-output name=coverage::"$COVERAGE""
