# gpx_datesplit

## prerequisites
bash

Ubuntu on Linux on Win10 should be fine

## purpose
This splits a GPX file by date. 1 input file over 28 days -> 28 output files.

The tracker we had produced GPX with every timestamp in the CEST timezone (TZ). 
This can easily became a problem when spanning a bunch of TZs.
