#!/usr/bin/perl
#
# Copyright (c) 2015 by Husam Hebaishi. All Rights Reserved.
#
while (<>) {
    chomp;
    @tokens = split /\t/, $_;
    $line = "";
    if ($#tokens >= 0) {
        for ($i = 0 ; $i < $#tokens ; $i++) {
            $line .= "$tokens[$i] & ";
        }
        $line .= "$tokens[$#tokens] \\\\\n";
        print $line;
    }
}
