# CMake generated Testfile for 
# Source directory: /root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/examples
# Build directory: /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/tests/examples
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(c-example-tests "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/scripts/env.py" "--" "PATH=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples:/usr/share/Modules/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/bin" "PYTHONPATH=/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/py" "/usr/bin/python3.6" "testme" "-v")
set_tests_properties(c-example-tests PROPERTIES  WORKING_DIRECTORY "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/examples" _BACKTRACE_TRIPLES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/PNAddTest.cmake;54;add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/examples/CMakeLists.txt;36;pn_add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/examples/CMakeLists.txt;0;")
