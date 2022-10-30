#!/bin/bash

sed -n '
      /^FROM$/I,/^TO$/I{
      /^FROM$/n
      /^TO$/ !{
        /^.*$/ p
    }
    }
' input.txt
