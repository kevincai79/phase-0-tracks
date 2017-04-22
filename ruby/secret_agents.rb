def encrypt(text)
  i = 0
  new_text =""
  new_string =""
  while i < text.length
    if text[i] == " "
      new_text = " "
    elsif text[i] == "z"
      new_text == "a"
    else
      new_text = text[i].next
    end
    new_string += new_text
    i += 1
  end
  puts new_string
end
def decrypt(text)
  n = 0
  new_text =""
  new_string =""
  while n < text.length
    if text[n] == " "
      new_text = " "
    elsif text[n] == "a"
        new_text == "z"
    else
      new_text = (text[n].ord - 1).chr
    end
    new_string += new_text
    n += 1
  end
  puts new_string
end
