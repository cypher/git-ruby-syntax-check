#!/bin/sh

# Simple test script. If TEST_DIR does not exist, populates it with some test files.
# Temporarily adds them to the git index, runs the pre-commit script, then removes them.
# You can add your own files to TEST_DIR, then remove the whole directory when you're
# done testing.

TEST_DIR="test-files"

if [ ! -d $TEST_DIR ]; then
  echo "Creating directory $TEST_DIR"
  mkdir $TEST_DIR
  cd $TEST_DIR
  echo "puts \"Hello, world.\"" > syntax-ok.rb
  echo "puts (\"Hello, world.\")" > syntax-warning.rb
  echo "puts 'Hello, world.\"" > syntax-error.rb
  echo "Hello, <%= 'world' %>." > syntax-ok.erb
  echo "Hello, <%= world' %>." > syntax-error.erb
  cd ..
fi
git add -f $TEST_DIR
./pre-commit
git reset $TEST_DIR
