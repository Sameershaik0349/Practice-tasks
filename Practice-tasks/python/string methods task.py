# . without using int-built in function – build a logic to convert string into int.
n="-1234"
i = 0
result =0
is_negtive =False
if n[0]=='-':
    is_negtive=True
    i+=1
while i <len(n):
    digit = ord(n[i])- ord('0')
    result = result * 10 + digit
    i+=1
if is_negtive:
    result = -result
print(result)

# 2. Without using title function – build a logic to convert a word into title

s ="sameer saheb"
is_captial=True
result=""
for i in s:
    if is_captial and 'a'<= i <='z':
        result+=chr(ord(i)-32)
        is_captial =False
    else:
        if 'A'<=i<='Z':
            result+=chr(ord(i)+32)
        else:
            result+=i

            if i == " ":
                is_captial =True
            else:
                is_captial =False
print(result)
    
        



