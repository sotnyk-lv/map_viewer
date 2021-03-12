file(REMOVE_RECURSE
  "libcurlpp.a"
  "libcurlpp.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/curlpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
