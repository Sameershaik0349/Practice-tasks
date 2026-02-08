# How do you create an empty list?
list1=[]

# How do you create a list with 5 numbers?
l = [1,2,3,4,5,1,1,1,1]
# How do you access the first element of a list?
print(l[0])
# How do you access the last element of a list?
print(l[-1])
# How do you find the length of a list?
print(len(l))

# How do you add an element to the end of a list?
l.append(2)
print(l)
# How do you insert an element at a specific index in a list?
l.insert(2,22)
print(l)

# How do you remove a specific element from a list?
l.remove(22)
print(l)

# How do you remove the last element from a list?
l.pop()
print(l)

# What is the difference between remove() and pop()?
"remove --- its start checking index to find the value from 0 to end (ex -l.remove(20   <-----element)" 
"pop ------ lt remove last value has default and with using index value for remove sepcific elemenr"

# How do you check if an element exists in a list?
if 22 in l:
    print("its exist")

# How do you loop through a list?
for i in l:
    pass
    print(i)

# How do you find the index of an element in a list?

idx = l.index(5)
print(idx) #------value ===4

# How do you count how many times an element appears in a list?
cou=l.count(1) # 5
print(cou)
# How do you reverse a list?
l.reverse()
print(l)

# How do you sort a list in ascending order?
l.sort()
print(l)
# How do you sort a list in descending order?
l.sort(reverse=True)
print(l)

# How do you copy a list?
b =l.copy()
print(b)  
"slicing"
slic=l[:]
print(slic)

# What is the difference between shallow copy and deep copy in lists?
# shallow copy
"copy ---- when we have two list inside of list then we copy that then they sam elements if we change the value its change both copied aslo"
"ex-- if we have bag when we copy a bag then the items also same and  if we changed the items then boths changes"
"outer is new and insed is shared"
a = [[1, 2], [3, 4]]
b = a.copy()
b[0][0] = 99
print(a)  # [[99, 2], [3, 4]]
print(b)  # [[99, 2], [3, 4]]

# deep copy
"its copy a both list and elements its helps to protect original value"
"its copt bag and items if the something changed only one bag changes original will safe"
import copy
org=[[1,2,3],[1,23,44]]

d = copy.deepcopy(org)
d[0][1]=98
print(org)              #[[1, 2, 3], [1, 23, 44]]
print(d)                 ##[[1, 98, 3], [1, 23, 44]]
# How do you merge two lists?
list1=[1,2,3,4]
list2=[2,3,44,55]
d=list1+list2
print(d)
"using extend"
list1.extend(list2)
print(list1)  # its merge the list 2 to list 1
# How do you clear all elements from a list?
cl=[1,2,3,4,5,55,66,77]
cl.clear()
print(cl)#----empty


# How do you delete a list completely?

s104=[1,2,3,4,5,5,6,6,7,]
del s104
# Can a list contain different data types? Explain.
" yes list is hetrogeneous"
hetro=[1,"sameer",2.4,True]

# Can a list contain another list? Give an example problem.

"yes"
a113 = [[1, 2], [3, 4]]
print(a113)


# How do you slice a list?

s11=[[1,2],3,3,4,[6,5]]
s=s11[0:2]
print(s)
# What happens if you access an index that does not exist in a list?

# How do you find the maximum value in a list?
s117=[10,12,13,14,15]
max=s117[0]
for i in s117:
    if i > max:
        max=i
print(max)

# How do you find the minimum value in a list?
s119=[8,3,4,5,6]
min=s119[0]
for i in s119:
    if i < min:
        min=i
print(min)

# How do you find the sum of elements in a list?
s121=[1,2,3,4,5]
sum=0
for i in s121:
    sum+=i
print(sum)