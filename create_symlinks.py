#!/usr/bin/env python

import os
import sys

# Work from wherever we're called
os.chdir(sys.path[0])

possible_dotfiles = os.listdir('.') + ['.ssh/ssh_config',
                                       '.config/fish/config.fish']

for filename in possible_dotfiles:
    if filename.startswith('.') and not filename.endswith('.swp'):
        symlink_name = os.path.expanduser('~/%s' % filename)
        if os.path.isfile(filename) and not os.path.exists(symlink_name):
            dir_name = os.path.dirname(symlink_name)
            if not os.path.isdir(dir_name):
                # If this symlink requires directorys, create the necessary
                # paths (like `mkdir -p`)
                os.makedirs(dir_name)
            os.symlink(os.path.abspath(filename), symlink_name)
