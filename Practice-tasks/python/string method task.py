"1. without using int-built in function – build a logic to convert string into int."
s ="123"
num=0
for i in s:
    num = num * 10 + (ord(i)-ord('0'))
print(num)


"2. Without using title function – build a logic to convert a word into title"

f = "python is famous"
res=""
list1=[]
found = True
for i in f:
    if i !=" ":
        if found:
            res+=i.upper()
            found = False
        else:
            res+=i
    else:
        list1.append(res)
        res=""
        found=True
list1.append(res)
print(list1) 