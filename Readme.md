# About

My CV, based on Friggeri's style and CV: http://www.latextemplates.com/template/friggeri-resume-cv

I replaced the non-free font by Source Sans Pro, which you can get from here: https://github.com/adobe-fonts/source-sans-pro

CV is probably not up-to-date.


If you want to use it for yourself, there's a makeauthorbold command in friggeri.cls which you'd have to replace with part of your name.

# Requirements

biber for the citations, XeLaTeX for compiling, Source Sans Pro for the font.

## on Fedora
You may need 'texlive-textpos', 
For newer versions (~25), install the package 'biber'.
For older versions 18 and 19, there's a Fedora repository for biber at http://repos.fedorapeople.org/repos/mef/biber/.
If you are using Fedora 20, you may need to downgrade biber to 1.8 using this repo: http://copr.fedoraproject.org/coprs/cbm/biber-1.8/

XeLaTeX should work by installing the texlive distribution.

## on Ubuntu

(Instructions courtesy of [Steven Hall/hallzy](https://github.com/hallzy) from [this issue](https://github.com/philippbayer/CV/issues/1#issuecomment-104332627)) 

For Ubuntu 12.04 LTS I did:

    sudo add-apt-repository ppa:texlive-backports/ppa
    sudo apt-get install texlive-full

Note that texlive-full takes a long time to install (I am talking a few hours). It is possible that you may be able to get it working with several smaller latex packages but I just went ahead and did everything.

Once this is done, we need the fonts... For the sake of making this simpler, I have a [folder in my repo](https://github.com/hallzy/dotfiles/tree/master/.fonts) with all the fonts, and also [this folder](https://github.com/hallzy/dotfiles/tree/master/texmf/fonts/opentype) you need... copy all those to a similarly placed and named folder.

Now also get [these fonts](https://github.com/hallzy/dotfiles/tree/master/.latex-unicode-math) and then do this (assuming ~/.latex-unicode-math is the folder you put these last fonts into:

    sudo mkdir -p /usr/share/texlive/texmf-dist/tex/latex/unicode-math/
    cd ~/.latex-unicode-math
    sudo cp * /usr/share/texlive/texmf-dist/tex/latex/unicode-math/

    sudo fc-cache -f -v
    sudo -H mktexlsr

I believe I also needed to install php5-cli to successfully do the above, but if not then don't bother.

Original README:

# About
Latest version of my CV, typesetted in Helvetica and using colors inspired by Monokai (there is an `print` option which renders in black and white, and reverts the header to dark on light, if printing on paper is needed).

Uses TikZ for the header, XeTeX and fontspec to use Helvetica Neue, biblatex to print my publications and textpos for the aside.


# License

Copyright (C) 2012, Adrien Friggeri

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
