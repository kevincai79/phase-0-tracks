def encrypt(text)
  i = 0
  new_text =""
  new_string =""
  while i < text.length
    if text[i] == " " || text[i] == "z"
      if text[i] == " "
        new_text = " "
      else
        new_text = "a"
      end
    else
      new_text = text[i].next
    end
    new_string += new_text
    i += 1
  end
  puts new_string
  new_string
end
encrypt("abc")
encrypt("zed")


def decrypt(text)
  n = 0
  new_text =""
  new_string =""
  while n < text.length
    if text[n] == " " || text[n] == "a"
      if text[n] == " "
        new_text = " "
      else
        new_text = "z"
      end
    else
      new_text = (text[n].ord - 1).chr
    end
    new_string += new_text
    n += 1
  end
  puts new_string
  new_string
end
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))


