#!/bin/bash
tr -s “ ” <./ teamassignment/teamwatson-repos.txt
| sed 's/ /,/g'>teamwatson.csv