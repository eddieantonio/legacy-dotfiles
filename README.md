# Dotfiles!

## IRRELEVANT SH/VIM PRO-TIP

To migrate all my Pathogen submodules to vundle, I did the following:

In `.vim/bundles/`, I used the following command to make a file of GitHub
owner/repository strings (note, I think I exclusivly used SSH urls):

    for i in *; do sed -E -n 's/.*github.com\/(.*).git/\1/p' $i/.git/config; done > ~/vundles.txt

Then I pasted `~/vundles.txt` into my `.vimrc`. After selecting it in visual
mode, I used the following command to turn it into Bundle calls.

   :'<,'>norm IBundle 'A'

(Yes, that is a literal escape control character. Deal with it.)

And because I'm crazy, I sorted it sections with the following command:
 
   :'<,'>sort /\v\/(vim)?-?/

