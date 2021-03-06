<h1 align=center>
<img src="Logo/logotype 1024.svg" width=40%>
</h1>

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-ff69b4.svg?style=flat)](https://github.com/leopardslab/expressPython/issues)
![Downloads](https://img.shields.io/github/downloads/leopardslab/expressPython/total.svg)
[![Windows Build status](https://ci.appveyor.com/api/projects/status/7nv8kw9x82vu9tbh/branch/master?svg=true)](https://ci.appveyor.com/project/JaDogg/expresspython/branch/master)
[![Ubuntu Build Status](https://github.com/leopardslab/expressPython/workflows/CI/badge.svg)](https://github.com/leopardslab/expressPython/actions?query=workflow%3ACI)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/982cd45fd0c341c49fdb1dd6f2ab47c8)](https://app.codacy.com/app/JaDogg/expressPython?utm_source=github.com&utm_medium=referral&utm_content=JaDogg/expressPython&utm_campaign=Badge_Grade_Dashboard)
[![BCH compliance](https://bettercodehub.com/edge/badge/JaDogg/expressPython?branch=master)](https://bettercodehub.com/)
[![License: GPL v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/JaDogg)
[![OPEN open source software](https://img.shields.io/badge/Open--OSS-%E2%9C%94-brightgreen.svg)](http://open-oss.com)
[![Gitter](https://img.shields.io/gitter/room/LeaopardLabs/expressPython)](https://gitter.im/LeaopardLabs/expressPython)

A small Python 3 editor for learning and competitive programming.

### Why expressPython?
I built expressPython to scratch an itch that I had. I wanted a tool that does following for me.

* Runs easily in windows, portable, doesn't affect system.
* I wanted a tool to test regexes, small scripts.
* It should start fast and I don't need to create files to test things
* Suitable to simulate HackerRank . (Has an input window and output window, works with stdin)
* I wanted to learn C++/Qt and polish Python knowledge.
* Compiled to 32bit will work on a 64bit machine. (Windows)
* Type some text in to `input` section and process it using quick scripts.
* Works offline.

### Contributors

* Bhathiya Perera (JaDogg) - Maintainer and original author
* Mirza Zulfan (mirzazulfan) - Logo & Icon 😎
* Harshit Verma (hv7214) - ANTLR Syntax Highlighting, Terminal, CI

![GIF](https://user-images.githubusercontent.com/42354803/83750303-bde3be80-a682-11ea-955e-f2aff01f4b10.gif) 

# User Guide

## Installation
This is fairly simple to use. 
* Download a standalone version from the releases. 
* Scan the binary package for viruses if you want ✔. 
* **Windows:** Extract it using 7-zip or a similar software and run `expressPython.exe`.
* **Linux:** Install it using .deb package.

## Editor
* Tabs are replaced by 4 spaces.
* Any `\t` (tab) character is highlighted in red.
* There are basic auto-complete features. Use: <kbd>ctrl</kbd> + <kbd>space</kbd>
* Content in the **input** can be read using `input()`
* You can write to **output** using `print()`.
* There is terminal intergrated, one can access it by clicking on the top right button(currently it is available for Ubuntu and MacOs distros).
* This is not a full IDE and is not planning to be.

## Known Limitations
* Lacks keyboard shortcuts(*Coming soon*).

## Credits
Standing on the shoulders of the giants.

* Qt 5.12.x (Or newer is used)
* Python >= 3.8.x 
* Jedi (latest) - https://github.com/davidhalter/jedi
* ANTLR tool by Terence Parr.
* Mateusz Loskot's Embedding Code (Modified)
* Train Icon from https://www.awicons.com
* All Other Icons from Open Icon Library

# Compiling

* This project uses Cmake to build. 
* There are two different scripts for windows and Linux/MacOs, which setup the project and followingly generates the binary. 
    * `build.cmd` is for windows systems.
    * `build.sh` is for Linux and MacOs systems.

#### Dependencies
* Python 3.8.x (32bit)
* Qt 5.12.x (GPL Version, MinGW 32bit)
* ANTLR4(ANother Tool for Language Recognition)

>64Bit versions should also work. But it is not tested yet.

Easiest way to compile is to use **QtCreator** and to build the binary.

#### Environment Variables
* `PYTHON3_LOCATION` - On windows set this to parent of `python.exe` of a 32bit Python 3.8.x installation.
* `PYTHON3_LIB_LOCATION` and `PYTHON3_INC_LOCATION` should be set to lib and include paths.


# Editor API
You can safely ignore this section if you are not interested in customizing/developing.

## Documentation
```python
# IDE's API
# ---------------------------
from express_api import get_input, set_input
from express_api import get_output, set_output
from express_api import get_code, set_code
from express_api import write_output, get_apppath
from express_api import set_search_regex, interrupt_requested
#
# get method's have no parameters and others have one
#
# get_input   - get input textbox's text
# set_input   - set input textbox's text
# get_output  - get output textbox's text
# set_output  - get output textbox's text
# get_code    - get code textbox's text
# set_code    - set code textbox's text
# write_output- append to output box
# get_apppath - get exe path
# interrupt_requested - returns 1 if we need to stop running

# API Help/Code Sample
# ---------------------------

# get text from input box
# parameters - none
txt = get_input()

# change output box's text
# parameters - string
set_output("")

# append to output box
# does not add a new line
# parameters - string
write_output("Hi You,\n")

# get_apppath() -> get exe path
print("expressPython.exe is at :", get_apppath())
```

## Customising launch script
If you want to customize how your code is executed.
* Copy `ep_runner.py` to `_express_startup_.py` near expressPython binary.
* Edit `_express_startup_.py` as you see fit.

# Appendix

## Learning Python
One of the reasons for creating this was to teach python.
You can checkout my Python 3 tutorial series at [http://pandabunnytech.com](http://pandabunnytech.com)

Getting Started Guide : [here](http://pandabunnytech.com/python-3-tutorial-beginners-guide/)

![Image](https://i1.wp.com/pandabunnytech.com/wp-content/uploads/2017/10/PythonTute_09.png)

* [Python 3 Tutorial for Beginners #01 – Getting Started](http://pandabunnytech.com/python-3-tutorial-beginners-guide/)
* [Python 3 Tutorial for Beginners #02 – Arithmetic and Logical Operators](http://pandabunnytech.com/python-3-tutorial-for-beginners-02/)
* [Python 3 Tutorial for Beginners #03 – If Statement and Python 3 Script Syntax](http://pandabunnytech.com/python-3-script-syntax-tutorial/)
* [Python 3 Tutorial for Beginners #04 – Python 3 For Loop](http://pandabunnytech.com/python-3-tutorial-python-3-for-loop/)
* [Python 3 Tutorial for Beginners #05 – Python 3 While Loop](http://pandabunnytech.com/python-3-tutorial-beginners-05-python-3-while-loop/)
* [Python 3 Tutorial for Beginners #06 – Python 3 Sequence Basics](http://pandabunnytech.com/python-3-tutorial-for-beginners-06-python-3-sequence-basics/)
* [Python 3 Tutorial for Beginners #07 – Python 3 Sequence Slicing](http://pandabunnytech.com/python-3-tutorial-for-beginners-07-python-3-sequence-slicing/)
* [Python 3 Tutorial for Beginners #08 – Python 3 Dictionary Basics](http://pandabunnytech.com/python-3-tutorial-for-beginners-08-python-3-dictionary-basics/)
* [Python 3 Tutorial for Beginners #09 – Python 3 Dictionary Usage](http://pandabunnytech.com/python-3-tutorial-for-beginners-09-python-3-dictionary-usage/)
