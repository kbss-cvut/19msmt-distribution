#!/bin/bash
find . -not -empty -name '*.ann' -exec basename {} \;  | sort
