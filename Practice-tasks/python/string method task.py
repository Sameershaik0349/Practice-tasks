# "1. without using int-built in function – build a logic to convert string into int."
# s ="123"
# num=0
# for i in s:
#     num = num * 10 + (ord(i)-ord('0'))
# print(num)


# "2. Without using title function – build a logic to convert a word into title"

# f = "python is famous"
# res=""
# list1=[]
# found = True
# for i in f:
#     if i !=" ":
#         if found:
#             res+=i.upper()
#             found = False
#         else:
#             res+=i
#     else:
#         list1.append(res)
#         res=""
#         found=True
# list1.append(res)
# print(list1) 

# lst = [1, 2, 3, 4]
# for x in lst[:]:
#     lst.remove(x)
# print(lst)

# n = 12345
# count = 0

# while n > 0:
#     count += 1
#     n //= 10

# print(count)

# s = "banana"
# freq = {}

# for ch in s:
#     if ch in freq:
#         freq[ch] += 1
#     else:
#         freq[ch] = 1

# print(freq)

# n =123
# rev=0
# while n >0:
#     d = n%10
#     n//=10
#     rev = rev *10 + d
# print(rev)


# l =[1,2,3,4,5]
# s = l[1]
# for i in l:
#     if i > s :
#         s =i
# print(s)

# s = "madam"
# tem =s
# rev =""
# for i in  s:
#     rev += i
# if rev==tem:
#     print("its palindrom")
# else:
#     print("not palindrom")


# s =["banana"]
# lis1={}
# for i in s :
#     for n in i:
#         if n not  in lis1:
#             lis1[n]=1
#         else:
#             lis1[n]+=1
# print(lis1)


# s ="sameer"
# dic={}
# for i in s:
#     if i not in dic:
#         dic[i]=1
#     else:
#         dic[i]+=1
# print(dic)



l =[1,2,3,4,5,6,7]
max = l[6]
max2=[0]
for i in l:
    if i < max and i > 








# even=[]
# odd =[]
# for i in l:
#     if i %2==0:
#         even.append(i)
#     if i % 2 !=0:
#         odd.append(i)
# print(even,odd)
