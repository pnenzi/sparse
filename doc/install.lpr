







                       Sparse1.3 Installation Notes



General Description

When Sparse1.3 is loaded from tape, a directory structure will be  created.
The head directory is sparse, it contains source and various utility files.
The doc subdirectory contains the users manual and the  matrices  subdirec-
tory contains a collection of test matrices and their solution.

Before compiling, the file spConfig.h  should  be  modified  to  suit  your
needs.   Initially, I recommend turning on the DEBUG option and testing the
error state of Sparse after each call to a Sparse  routine.   After  things
are  working  smoothly  you can remove most of the error checking.  Also in
spConfig.h is the machine constants.  These should be checked and  modified
before compiling if you are not using a VAX.

Sparse is compiled by using the makefile provided.  This is a  script  file
that automatically compiles each file and creates an object file for all of
Sparse.  Also created is an executable test program called sparse.

The Sparse1.3 manual is contained in spDoc and spDoc.ms.  spDoc is  prefor-
matted and readable on line.  spDoc.ms is a raw troff file.



UNIX

The tar program was used to write Sparse on the tape at 1600 bpi.  To  read
it, simply type:

     tar x

This will load Sparse into the current directory and  automatically  create
the  proper subdirectories.  To compile, move into the sparse directory and
type:

     make

To create a printed manual, move into the doc subdirectory and type:

     make

You may have to modify the make file to indicate the name  of  the  printer
the document should be printed on.



VMS

Sparse was written on the tape in the ansi format at 1600  bpi  and  so  is
readable by copy.  Once the tape has been read, a series of files with non-
sensical names will exist  plus  the  file  UNPACK.COM.   This  file,  when



                        July 1, 1988





                           - 2 -


executed,  creates  the directory hierarchy and moves the Sparse files into
the proper directory and gives them the  proper  names.   Thus,  Sparse  is
installed with the following command sequence:

     MOUNT MFA0: SPARSE
     COPY MFA0:*.* *.*.*
     @UNPACK

The file UNPACK.COM is then no longer needed.

Before compiling, it is necessary to edit the file MAKE.COM.  The last line
of  the  file must be changed so that the correct directory name for Sparse
is given.  This last line must be executed each time you relogin  and  plan
to use the Sparse test program; you may want to copy it into LOGIN.COM.  To
compile, type:

     @MAKE






Good Luck ...

Every effort has been made to make Sparse a pleasant program to work  with.
I  hope you find it so.  If you have any comments, criticisms, or praise, I
would like to hear from you.   I  would  be  especially  be  interested  in
reports on any bugs you may find, however I cannot promise to reply.

Ken Kundert
Dept. of Electrical Engineering and Computer Sciences
University of California
Berkeley, California 94720
June 1988

sparse@ic.berkeley.edu
ucbvax!ic!sparse




















                        July 1, 1988


