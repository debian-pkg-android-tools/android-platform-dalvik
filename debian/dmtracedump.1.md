% DMTRACEDUMP(1) android-platform-dalvik | dmtracedump Manuals
% The Android Open Source Project
% 7.0.0_r1

# NAME

dmtracedump - Java method trace dump tool

# SYNOPSIS

**dmtracedump** [-h] [-o] [-s _sortable_] [-d _trace-file-name_] [-g _outfile_] _trace-file-name_

# DESCRIPTION

**dmtracedump** is a tool that gives you an alternate way of generating
graphical call-stack diagrams from trace log files (instead of using Traceview).

The tool loads trace log data from **_trace-file-name_.data** and
**_trace-file-name_.key**.

# OPTIONS

-d _trace-file-name_
: Diff with this trace

-g _outfile_
: Write graph to _outfile_

-k
: When writing a graph, keep the intermediate DOT file

-h
: Turn on HTML output

-o
: Dump the dmtrace file instead of profiling

-s
: URL base to where the sortable JavaScript file

-t _threshold_
: Threshold percentage for including nodes in the graph

# SEE ALSO

https://developer.android.com/tools/help/dmtracedump.html