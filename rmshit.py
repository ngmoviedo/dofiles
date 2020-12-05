#! /usr/bin/env python3

import os
import sys
import shutil


shittyfiles = [
    '~/Desktop',             # Firefox creates this
    '~/.thumbnails',
    '~/.gconfd',
    '~/.gconf',
    '~/.gstreamer-0.10',
    '~/.pulse',
    '~/.dbus',
    '~/.nv/',
    '~/.viminfo',           # configured to be moved to ~/.cache/vim/viminfo, but it is still sometimes created...
    '.vimrc_background',
    '~/.npm/',              # npm cache
    '~/.java/',
    '~/.oracle_jre_usage/',
    '~/.cmake/',
    '~/.subversion/',
    '~/.lesshst',
    '~/.cargo/',
    '~/.cache/',
    '~/.python_history',
    '~/.config/enchant',
    '~/.config/QtProject.conf',
    '~/.config/dconf/'
]


def yesno(question, default="n"):
    """ Asks the user for YES or NO, always case insensitive.
        Returns True for YES and False for NO.
    """
    prompt = "%s (y/[n]) " % question

    ans = input(prompt).strip().lower()

    if not ans:
        ans = default

    if ans == "y":
        return True
    return False


def rmshit():
    print("Found shittyfiles:")
    found = []
    for f in shittyfiles:
        absf = os.path.expanduser(f)
        if os.path.exists(absf):
            found.append(absf)
            print("    %s" % f)

    if len(found) == 0:
        print("No shitty files found :)")
        return

    if yesno("Remove all?", default="n"):
        for f in found:
            if os.path.isfile(f):
                os.remove(f)
            else:
                shutil.rmtree(f)
        print("All cleaned")
    else:
        print("No file removed")


if __name__ == '__main__':
    rmshit()
