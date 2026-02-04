j =[101,"ajay","it"]
emp1=123
emp2="sameer"
if emp1 in j or emp2 in j:
    print(j)
else:
    j.clear()
    print(j)

"using loop"

j =[101,"ajay","it"]
emp1=123
emp2="ajay"
for i in j:
    if i == emp1 or i == emp2:
        # found =  True
        print(j)
        break

else:
    j.clear()
    print(j)



