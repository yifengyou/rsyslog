file(REMOVE_RECURSE
  "libqpid-proton-proactor.pdb"
  "libqpid-proton-proactor.so"
  "libqpid-proton-proactor.so.1"
  "libqpid-proton-proactor.so.1.8.0"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/qpid-proton-proactor.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
