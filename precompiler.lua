function replaceSynonyms(picoString)
  -- Really naive replacement of substrings
  result=string.gsub(picoString, "(!=)", "~=")
  result=string.gsub(result, "(tostr)", "tostring")
  return result
end

function expandAssignmentShortcuts(picoString)
  -- Less naive replacement of strings, but will still replace matches in literal strings
  -- [_%a][_%w]* matches lua identifiers
  result = string.gsub(picoString, "([_%a][_%w]*)%s*([%+%-%*%/%%])=%s*", "%1 = %1 %2 ")
  return result
end

io.write("Replace synonyms result:")
io.write(replaceSynonyms("x != a"))
io.read()

io.write("Expand assignment shortcuts result:")
io.write("\n"..expandAssignmentShortcuts("x+=1"))
io.write("\n"..expandAssignmentShortcuts("y *= 0"))
io.read()
