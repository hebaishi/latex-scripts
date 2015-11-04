#!/usr/bin/perl
#
# Copyright (c) 2015 by Husam Hebaishi. All Rights Reserved.
#
while (<>) {
    chomp;
    @tokens = split /\s+/, $_;
    $line = "";
    if ($#tokens >= 0) {
        for ($i = 0 ; $i <= $#tokens ; $i++) {
			if ($tokens[$i] =~ m/^\d+$/ || $tokens[$i] =~ m/^\d+\.\d+$/) {
				# Our value is a number
				# So let's use the siunitx package to prettify it
				$tokens[$i] = '\num{' . $tokens[$i] . '}';
			}
            $line .= "$tokens[$i] & ";
        }
		$line =~ s/\& $/\\\\/g;
		print "$line\n";
    }
}
