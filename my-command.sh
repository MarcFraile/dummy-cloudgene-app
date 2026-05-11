#!/bin/bash

echo ::set-counter name=command:: 3
echo ::submit-counter name=command::

echo ::set-value name=abc:: DEF
echo ::submit-value name=abc::

echo ::set-and-submit-value name=badger:: mushroom mushroom

echo ::set-counter name=next.flow.here:: 10
echo ::submit-counter name=next.flow.here::
