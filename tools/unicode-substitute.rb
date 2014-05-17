#!/usr/bin/env ruby

#
# This is a ruby script for replacing "<character>" with "<U(hexadeximal numeric value of the character)>"
# It is mainly designed for processing localisation files for glibc.
# The scripts expects an EOF terminated STDIN input, the output is printed on STDOUT
#
# Created		2014-05-17
# Organisation		OuterScience
# Project 		UniversalFormat
# Author		Stanley Hawkeye
# Version 		1.0
#

pattern = /<(.)>/

while line = gets
	line.gsub! pattern do
		sprintf("<U%04X>", $1.ord) # replace the character for its hexadecimal numeric value
	end

	puts line
end
