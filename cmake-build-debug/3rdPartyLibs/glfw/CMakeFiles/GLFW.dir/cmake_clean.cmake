file(REMOVE_RECURSE
  "libGLFW.a"
  "libGLFW.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/GLFW.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
