#!/bin/sh -l

echo "::debug ::Debug message"
echo "::warning ::warning message"
echo "::error ::error message"
echo "::add-mask::$1"
echo "HELLO $1"
time=$(date)
echo "::set-output name=time::$time"

echo "::group::Some expandable logs"
echo 'some stuff'
echo 'some stuff'
echo 'some stuff'
echo "::endgroup::"
echo "HELLO=hello" >> $GITHUB_ENV