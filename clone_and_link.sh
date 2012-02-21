#!/bin/bash

cd &&
[ -d '.dot-files' ] || git clone https://github.com/gldnspud/dot-files .dot-files &&
ls -1d .dot-files/files/* .dot-files/files/.* | while read f; do
  # Ignoring special dirs, link everything in .dot-files/files to home directory.
  [ "$f" == '.dot-files/files/.' ] ||
  [ "$f" == '.dot-files/files/..' ] ||
  [ "$f" == '.dot-files/files/.git' ] ||
  ln -vsf "$f" .
done
