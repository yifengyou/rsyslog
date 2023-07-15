# CMake generated Testfile for 
# Source directory: /root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests
# Build directory: /root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(c-core-test "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/scripts/env.py" "--" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/c-core-test")
set_tests_properties(c-core-test PROPERTIES  WORKING_DIRECTORY "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests" _BACKTRACE_TRIPLES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/PNAddTest.cmake;54;add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;49;pn_add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;58;add_c_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;0;")
add_test(c-extra-test "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/scripts/env.py" "--" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/c-extra-test")
set_tests_properties(c-extra-test PROPERTIES  WORKING_DIRECTORY "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests" _BACKTRACE_TRIPLES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/PNAddTest.cmake;54;add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;49;pn_add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;73;add_c_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;0;")
add_test(c-proactor-test "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/scripts/env.py" "--" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/c-proactor-test")
set_tests_properties(c-proactor-test PROPERTIES  WORKING_DIRECTORY "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests" _BACKTRACE_TRIPLES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/PNAddTest.cmake;54;add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;49;pn_add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;78;add_c_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;0;")
add_test(c-raw-connection-test "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/scripts/env.py" "--" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/c-raw-connection-test")
set_tests_properties(c-raw-connection-test PROPERTIES  WORKING_DIRECTORY "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests" _BACKTRACE_TRIPLES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/PNAddTest.cmake;54;add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;49;pn_add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;81;add_c_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;0;")
add_test(c-ssl-proactor-test "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/scripts/env.py" "--" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/c-ssl-proactor-test")
set_tests_properties(c-ssl-proactor-test PROPERTIES  WORKING_DIRECTORY "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests" _BACKTRACE_TRIPLES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/PNAddTest.cmake;54;add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;49;pn_add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;84;add_c_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;0;")
add_test(c-fdlimit-tests "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/scripts/env.py" "--" "PATH=/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples:/usr/share/Modules/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/bin" "PYTHONPATH=/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/py" "TEST_EXE_PREFIX=" "/usr/bin/python3.6" "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/fdlimit.py")
set_tests_properties(c-fdlimit-tests PROPERTIES  WORKING_DIRECTORY "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests" _BACKTRACE_TRIPLES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/tests/PNAddTest.cmake;54;add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;113;pn_add_test;/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/tests/CMakeLists.txt;0;")
