################################################################
#
#  Licensed to the Apache Software Foundation (ASF) under one
#  or more contributor license agreements.  See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#  
#  http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing,
#  software distributed under the License is distributed on an
#  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#  KIND, either express or implied.  See the License for the
#  specific language governing permissions and limitations
#  under the License.
#
################################################################


NOTE: for instructions on how to get going with SVUnit, go to
      www.agilesoc.com/svunit.

NOTE: Refer also to the FAQ at: www.agilesoc.com/svunit/svunit-FAQ



-----------------------------------------------------------
Release Notes...
-----------------------------------------------------------
See RELEASE.txt for release notes



-----------------------------------------------------------
Step-by-step instructions to get a first unit test going...
-----------------------------------------------------------

1) setup the SVUNIT_INSTALL and PATH environment variables
>export SVUNIT_INSTALL=`pwd`
>export PATH=$PATH:$SVUNIT_INSTALL"/bin"

1a) or you can source the Setup.bsh (if you use the bash shell)
>source Setup.bsh

1b) or you can source the Setup.csh (if you use the csh shell)
>source Setup.csh

2) go somewhere outside SVUNIT_INSTALL (i.e. where you are right now)
and start a class-under-test
---
  bogus.sv:
    class bogus;
    endclass
---

3) generate the unit test
>create_unit_test.pl bogus.sv

4) add tests using the helper macros
---
  bogus_unit_test.sv:
    `SVUNIT_TESTS_BEGIN
    //===================================
    // Unit test: test_mytest
    //===================================
    `SVTEST(test_mytest)
    `SVTEST_END

    `SVUNIT_TESTS_END
---

5) run the unittests
>runSVUnit -s <simulator> # simulator is ius, questa, modelsim, riviera or vcs

6) repeat steps 4 and 5 until done

7) pat self on back
