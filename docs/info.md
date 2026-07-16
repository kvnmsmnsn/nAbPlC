<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Simple CMOS implementation of the function Y = not ((A and B) or C); with
three PMOSes on top, one controlled by (cOp) in series with the other two in
parallel; and three NMOSes on the bottom, with the two controlled by (aOp) and
(bOp) in parallel, and the one controller by (cOp) in parallel with them.

## How to test

Toggle (aOp) between low and high every 400 nanoseconds, toggle (bOp) between
low and high every 200 nanoseconds, and toggle (cOp) between low and high every
100 nanoseconds. Over the interval 0 nanoseconds to 800 ns, (yOut) should be
high from time 0 to 100 ns, high from 200 ns to 300 ns, high from 400 to 500,
and low over every other subinterval. Expect a rise time of 40 nanoseconds.

aOp | bOp | cOp || yOut
----+-----+-----++-----
 0  |  0  |  0  ||  1
 0  |  0  |  1  ||  0
 0  |  1  |  0  ||  1
 0  |  1  |  1  ||  0
 1  |  0  |  0  ||  1
 1  |  0  |  1  ||  0
 1  |  1  |  0  ||  0
 1  |  1  |  1  ||  0

## External hardware

Signal generator, oscilloscope.
