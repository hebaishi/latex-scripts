#
# Copyright (c) 2015 by Husam Hebaishi. All Rights Reserved.
#

#!/usr/bin/perl
# This is the latex block that the filenames are inserted into
# %f = actual filename, %e = filename with underscores escaped
$text = "";
$text .= '\begin{subfigure}{0.5\textwidth}';
$text .= "\n";
$text .= '\includegraphics[width=\linewidth]{%f}';
$text .= "\n";
$text .= '\caption{\texttt{%e}}';
$text .= "\n";
$text .= '\end{subfigure}';
$text .= "\n";

# Now let's read STDIN
while (<STDIN>) {
    chomp;
    if ($_ eq "") {
        exit();
    }
    $filename = $_;
    $escaped_filename = $filename;
    $escaped_filename =~ s/\_/\\\_/g;

    $output = $text;
    $output =~ s/\%f/$filename/g;
    $output =~ s/\%e/$escaped_filename/g;

    print $output;
}
