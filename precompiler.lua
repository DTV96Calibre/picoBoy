function replaceSynonyms(picoString)
  result=string.gsub(picoString, "(!=)", "~=")
  return result
end

io.write("Replace synonyms result:")
io.write(replaceSynonyms("x != a"))
io.read()
