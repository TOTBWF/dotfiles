#! /usr/bin/env python

import sys

addr = int(sys.argv[1])
print('Tag = ', addr >> 9)
print('Index = ', (addr >> 6) & 7)
print('Offset = ', addr & 63)

