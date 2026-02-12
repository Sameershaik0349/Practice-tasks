# Check whether the given numbers is prime number or not, if it is a prime number,
# Multiply it with 2.
user=int(input("enter a number"))
count=0
for i in range(1,user):
    if user % i ==0:
        count+=1
if count ==1:
    print(user*2)
else:
    print("not a prime")


# <<<<<<< HEAD
# # [10,30,50,20]
# =======
# #[10,30,50,20]
# >>>>>>> 8cf6e925378f9eff6c8019c7d5a71c6d5f2209bd
# # Arrange the list  into ascending order without using the sort function.
l = [10, 30, 50, 20]
asen = []

while l:
    minimum = l[0]
    for x in l:
        if x < minimum:
            minimum = x
    asen.append(minimum)
    l.remove(minimum)

print(asen)

# "or"

l = [10, 30, 50, 20]

for i in range(len(l)):
    for j in range(i + 1, len(l)):   # Compare each element with the remaining elements and swap if they are in the wrong order.
        if l[i] > l[j]:
            l[i], l[j] = l[j], l[i]

print(l)


# Check whether the given list is in ascending order or not , if the list in ascending order print ascending order,otherwise print non- ascending order.
import copy
lis=[10,30,50,9]
d =lis.copy()
asen=[]
while lis:
    minimum = lis[0]
    for i in lis:
        if i < minimum:
            minimum=i
    asen.append(minimum)  
    lis.remove(minimum)
if asen == d:
    print("it is in ascending order ")
else:
    print("it is in non-asending order")
