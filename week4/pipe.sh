#!/bin/bash

#this command lists all the running procceses 
#and searches for the proccesses that contains mysql sting 
ps -ef | grep my sql

# ps - displays information on all running procceses

# | - piping allows you to chain commands together and build more advanced queries

#grep searches the named input FILEs for lines containing a match to the
#       given PATTERN.  If no files are specified, or if the file “-” is given,
#       grep  searches  standard  input.   By default, grep prints the matching
#       lines.

#mysql is a simple SQL shell (with GNU readline capabilities). It
#       supports interactive and noninteractive use. When used interactively,
#       query results are presented in an ASCII-table format. When used
#       noninteractively (for example, as a filter), the result is presented in
#       tab-separated format. The output format can be changed using command
#       options.

