# sparse
Ken Kundert sparse matrix library

This repository contains the code from Ken's sourceforge project: 
http://sparse.sourceforge.net/description.html

The master branch corresponds to the code in sparse1.4b.tar.gz

Other branches:

sparseCVS: copy of the latest code available from sourceforge CVS on 22/12/2016
sparse14a: code from the archive spase1.4a.tar.gz

Installatation Notes (adapted from Ken's repository)

Once you have the Sparse source hierarchy, you can make the lib/sparse.a archive and the bin/sparse test program by running make in the src directory. You can test sparse by running make in the matrices directory. If you plan to make changes to sparse and want to configure the tests so that they can detect changes in the results, run make update in the matrices directory to populate the archive of golden files. Later, after making your changes and rerunning all of the tests, run make compare in the matrices directories to compare against the golden files.