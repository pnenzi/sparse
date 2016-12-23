






                         Sparse1.3
              A Sparse Linear Equation Solver

                     Kenneth S. Kundert
              Alberto Sangiovanni-Vincentelli


     Sparse1.3 is a flexible package of subroutines  written
in  C used to quickly and accurately solve large sparse sys-
tems of linear equations.  The package  is  able  to  handle
arbitrary real and complex square matrix equations.  Besides
being able to solve linear  systems,  it  is  also  able  to
quickly  solve  transposed  systems,  find determinants, and
estimate errors due to ill-conditioning  in  the  system  of
equations  and instability in the computations.  Sparse also
provides a test program that is able read  matrix  equations
from  a file, solve them, and print useful information about
the equation and its solution.

     Sparse1.3 is generally as fast  or  faster  than  other
popular sparse matrix packages when solving many matrices of
similar structure.  Sparse does not require or  assume  sym-
metry  and  is  able  to perform numerical pivoting to avoid
unnecessary error in  the  solution.   It  handles  its  own
memory allocation, which allows the user to forgo the hassle
of providing adequate memory.  It also has a natural, flexi-
ble, and efficient interface to the calling program.

     Sparse was originally written for use in circuit  simu-
lators  and  is  particularly  apt  at  handling  node-  and
modified-node admittance matrices.  The  systems  of  linear
generated  in  a  circuit  simulator stem from solving large
systems of nonlinear equations  using  Newton's  method  and
integrating  large  stiff  systems  of ordinary differential
equations.  However, Sparse is also suitable for other uses,
one  in  particular  is  solving  the  very large systems of
linear equations resulting from the  numerical  solution  of
partial differential equations.

     The Sparse1.3 package is currently available  from  the
Department  of  Electrical Engineering and Computer Sciences
of the University of California, Berkeley.  It  was  written
in  the  C  programming language by Kenneth Kundert and ver-
sions exist for the UNIX and VAX/VMS operating systems.   Be
sure  to  specify  the version when ordering.  Sparse1.3 has
replaced Sparse1.2; providing greater capability and  speed,
and a more refined interface to the calling program.

     Sparse is available for a $150.00 charge.  The  package
includes  the  source  code on tape, the user's guide, and a
large selection of test  matrices.   To  obtain  a  copy  of
Sparse,  send  a check or money order payable to the Regents
of the University of California to:
        EECS Industrial Liaison Program
        461 Cory Hall
        University of California
        Berkeley, CA 94720

Please allow four weeks for delivery.

     The University often does not  have  the  resources  to
consult  with  users on how to use or modify these programs.
We would, however, like to be notified of  any  problems  or
errors  in  the  material  provided and appreciate copies on
tape of any troublesome matrices.  If the programs are  con-
verted  to  run  on  other systems, we would like to receive
copies of the modified programs so that these  versions  can
be made available to the public.



                Sparse1.3 Timing Comparisons


Sparse1.3 is compared  to  Sparse1.2,  Harwell's  MA28,  and
Yale's  YSMP.   Comparisons  are  made  based  on  the  time
required to perform each of three tasks:  factor the  matrix
given  an  unordered  matrix,  factor  a  previously ordered
matrix, and compute the solution to a matrix equation  given
a  factored  matrix.  Times were measured on a vax8650 under
Ultrix1.2 and are given in seconds.  The last digit  of  the
given times is uncertain.

Sparse is configured to use diagonal pivoting with  a  pivot
threshold  of 0.001.  It is not using its modified Markowitz
pivoting algorithm.

YSMP uses a symbolic ordering algorithm that does  not  take
into  account  the  numerical  values  in  the matrix, which
explains why it failed on the grid10 matrix.  As  a  result,
YSMP  cannot  be  fairly compared with the other packages on
the basis of time required to factor an unordered matrix and
so it was not included in that table.

Most matrices were generated during the course of  computing
the  DC  operating  point  or the transient solution of some
circuit using Relax, Advice, or the  simulator  from  Zycad.
The  exceptions  are  mat8;  which  was  taken  from a force
directed placement  problem;  and  grid10,  grid33,  grid66,
karti, and karti2; which were generated when trying to solve
a system of partial differential equations.


_____________________________________________________________________
                      Order and factor times
_____________________________________________________________________
matrix       size   entries/row   sp1.3    sp1.2/sp1.3   ma28/sp1.3
_____________________________________________________________________
digfi.dc      378       3.85        0.4       0.93         0.74
eprom         630       4.92        1.32      1.01         0.46
timem.dc     1957       3.42        2.55      0.93         3.05
timem.tr     1957       5.08        3.7       0.97         0.36
zy1137       1137      11.14        8.37      1.05         0.21
zy3315       3315       4.82        9.07      0.9          0.34
zy450         450       4.52        0.58      1.24         0.55
zy1195       1195       6.73       43.18      1.07         1.79
matrix4000   4000       3.20       29.6       0.99         0.90
vish         2806       8.36       80.48      1            0.31
decode06       76      11.26        0.20      1.1          0.4
decode07      142      13.72        0.72      1.04         0.34
decode08      272      16.12        2.9       1.08         0.32
decode09      530      18.42       12.5       1.01         0.21
decode10     1044      20.64       53.85      0.99         0.19
adv2806      2806       8.36       74.55      1.01         0.29
adv3388      3388      11.97      118.22      1            0.08
adv3776      3776       7.31       82.92      1            0.087
adv920        920       8.10        6.65      0.94         0.18
joeyADC.dc   5355       4.63       34.03      1            0.54
joeyADC.tr   5355       6.02      126.95      0.99         0.2
mat8          300      13.33       13.73      0.97         0.69
grid10        100       9.22        0.17      1.08         1
grid33       1089       4.88       11.18      1.02         2.88
grid66       4356       4.99      135.48      1.02         5.62
karti         171       9.39        0.85      1.02         0.72
karti2       1073       9.20       84.83      1.48         3.24
_____________________________________________________________________





_______________________________________________________________________________
                                  Factor times
_______________________________________________________________________________
matrix        size  entries/row     sp1.3  sp1.2/sp1.3  ma28/sp1.3  ysmp/sp1.3
_______________________________________________________________________________
digfi.dc      378       3.85       0.024       1.13         3.52         2.78
eprom         630       4.92       0.093       1.42         2.7          1.27
timem.dc     1957       3.42       0.084       1.46         4.79         1.99
timem.tr     1957       5.08       0.134       1.25         4.35         1.49
zy1137       1137      11.14       0.206       1.37         7.55         2.11
zy3315       3315       4.82       0.264       1.35         4.08         1.64
zy450         450       4.52       0.026       1.27         5            1.92
zy1195       1195       6.73       2.794       1.66         0.92         6.82
matrix4000   4000       3.20       5.907       1.38         1.3          0.75
vish         2806       8.36       4.178       4.06         1.56         0.77
decode06       76      11.26       0.014       1.93         3.47         1.7
decode07      142      13.72       0.031       2.26         3.4          1.67
decode08      272      16.12       0.084       3.51         4.37         1.19
decode09      530      18.42       0.225       6.06         3.71         0.96
decode10     1044      20.64       0.565      11.1          3.41         0.94
adv2806      2806       8.36       4.455       3.54         1.21         0.67
adv3388      3388      11.97       1.355       2.07        17.2          1.49
adv3776      3776       7.31       1.612       1.65         9.94         1.16
adv920        920       8.10       0.150       1.35        12.4          1.35
joeyADC.dc   5355       4.63       0.250       2.2          6.27         2.73
joeyADC.tr   5355       6.02       4.370       4.22         1.15         0.84
mat8          300      13.33       3.961       1.35         0.66         0.77
grid10        100       9.22       0.012       1.5          3.06      zero pivot
grid33       1089       4.88       1.078       1.65         1.63         0.94
grid66       4356       4.99      12.03        1.80         2.10         0.85
karti         171       9.39       0.062       1.42         2.12         1.34
karti2       1073       9.20      11.14        2.09         0.77         1.05
_______________________________________________________________________________





_______________________________________________________________________________
                                  Solve times
_______________________________________________________________________________
matrix       size   entries/row   sp1.3   sp1.2/sp1.3   ma28/sp1.3   ysmp/sp1.3
_______________________________________________________________________________
digfi.dc      378       3.85      0.011      1.36          1.5          0
eprom         630       4.92      0.019      1.05          1.3          0.94
timem.dc     1957       3.42      0.04       0.93          2.24         0.87
timem.tr     1957       5.08      0.04       1.08          2.05         1.68
zy1137       1137      11.14      0.037      1.03          2            1.52
zy3315       3315       4.82      0.072      1.11          1.79         1.39
zy450         450       4.52      0.008      0.88          2.57         0
zy1195       1195       6.73      0.081      1.17          1.43         3.7
matrix4000   4000       3.20      0.16       1.13          2.14         1.04
vish         2806       8.36      0.297      1.01          0.92         0.62
decode06       76      11.26      0.002      0             1.33         0
decode07      142      13.72      0.005      2             3.33         5.67
decode08      272      16.12      0.016      0.82          1.2          1.31
decode09      530      18.42      0.035      0.71          1.27         1.22
decode10     1044      20.64      0.073      0.79          1.28         1.06
adv2806      2806       8.36      0.147      1.09          1.43         0.90
adv3388      3388      11.97      0.122      1.12          1.89         1.37
adv3776      3776       7.31      0.138      1.12          1.41         1.33
adv920        920       8.10      0.023      1.23          1.85         2.17
joeyADC.dc   5355       4.63      0.1        0.83          1.67         1.5
joeyADC.tr   5355       6.02      0.233      1.0           1.21         1.07
mat8          300      13.33      0.108      1.04          0.6          0.62
grid10        100       9.22      0.005      0.6           3.5       zero pivot
grid33       1089       4.88      0.057      1.28          1.95         1.75
grid66       4356       4.99      0.34       1.29          1.70         1.27
karti         171       9.39      0.017      1             0.77         1.31
karti2       1073       9.20      0.173      1.92          1.04         1.65
_______________________________________________________________________________
