file(REMOVE_RECURSE
  "libqpid-proton-core.pdb"
  "libqpid-proton-core.so"
  "libqpid-proton-core.so.10"
  "libqpid-proton-core.so.10.11.1"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/qpid-proton-core.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
