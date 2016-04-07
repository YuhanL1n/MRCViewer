FILE(REMOVE_RECURSE
  "custom.moc"
  "CMakeFiles/custom.dir/custom.cpp.o"
  "../../lib/libcustom.pdb"
  "../../lib/libcustom.a"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/custom.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
