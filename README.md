FCSH Bash Wrapper
=================

These are two tiny bash scripts to use the flex fcsh utility in text editors like vim, emacs and others.

Usage
=====

Open a terminal window in the directory where the sources of your flex application resides, 
copy the files fcshw.sh and fsend.sh there, and run the fschw.sh command.

In your favorite editor (or in other terminal window) run fcsend.sh, the arguments are passed directly to the compiler.


VIM Example
===========

    :set makeprg=fcsend.sh\ compile\ $*

    TODO: Verify
    :set errorformat=%f(%l):\ col:\ %c\ Error:\ %m,%-G%.%#
    :set errorformat=%f(%l):\ \ Error:\ %m,%-G%.%#
    
to Full compile the current file:

    :./!fcsend.sh mxmlc %
    
for incremental compile the current file:
    
    :make n  (n is the target id)


License
=======

#### The MIT License (MIT) ####

Copyright (c) 2014 - elessarc

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
