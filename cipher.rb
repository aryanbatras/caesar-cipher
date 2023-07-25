

def cipher(string, value)
string = string.split('')

arr = []
temp = ''


    string.each  {
    |char| 

  

    if ("A".."Z").include?(char)
        temp = char
        value.times {temp = temp.next}
        temp = temp[-1]
        arr.push(temp)
    end

    if ("a".."z").include?(char)
        temp = char
        value.times {temp = temp.next}
        temp = temp[-1]
        arr.push(temp)
    end

    if char =~ /[\s]/
        temp = char
        arr.push(temp)
    end

    if char =~ /[^a-zA-Z\s]/
        temp = char
        arr.push(temp)
    end
    } 

    if value < 0
        value = 0
    end

arr = arr.join('')
p arr

end


cipher("What a string!", 5)
# "Bmfy f xywnsl!"


