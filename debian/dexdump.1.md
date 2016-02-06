% DEXDUMP(1) dexdump Manuals
% The Android Open Source Project
% 13 October 2015

# NAME

dexdump - Display information about Android .dex files

# SYNOPSIS

**dexdump** [-c] [-d] [-f] [-h] [-i] [-l _layout_] [-m] [-t _tempfile_] _dexfile_...

# DESCRIPTION

**dexdump** is intended to mimic **objdump**. When possible, use similar
command-line arguments.

# OPTIONS

-c
: Verify checksum and exit.

-d
: Disassemble code sections.

-f
: Display summary information from file header.

-h
: Display file header details.

-i
: Ignore checksum failures.

-l
: Output layout, either **plain** or **xml**.

-m
: Dump register maps (and nothing else).

-t
: Temp file name (defaults to **/sdcard/dex-temp-\***).