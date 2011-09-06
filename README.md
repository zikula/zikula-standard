Zikula Standard Distribution
============================

This repository provides metadata for the Zikula CI server to build the Official Zikula Distribution (at http://ci.zikula.org/).

The `build.xml` file instructs the CI server which version of Zikula Core to download and which modules.

The `custom-$lang.sql` is a customised SQL version that will be used during the installation process, allowing Zikula Standard to be fully setup on installation.


Versioning
----------

Version numbers are based on the Zikula Core version number plus the version of the distribution.  So 1.3.1-1 simply means, Zikula Core version 1.3.1, and this is version 1 of that distribution.

e.g.

    1.3.1-1 First version based on Zikula Core 1.3.1
    1.3.1-2 Maintenance release based 1.3.1
    1.3.1-3 Next maintenance release based on 1.3.1

    1.3.2-1 Distribution based on Zikula Core 1.3.2
    1.3.2-2 Maintenance release based 1.3.2

