"""1. Print numbers from 1 to 100"""
for i in range(1, 101):
    print(i)
# Output: 1 2 3 ... 100


"""2. Print numbers from 100 to 1"""
for i in range(100, 0, -1):
    print(i)
# Output: 100 99 ... 1


"""3. Print even numbers between 1 and 50"""
for i in range(1, 51):
    if i % 2 == 0:
        print(i)
# Output: 2 4 6 ... 50


"""4. Print odd numbers between 1 and 50"""
for i in range(1, 51):
    if i % 2 != 0:
        print(i)
# Output: 1 3 5 ... 49


"""5. Print multiples of 5 between 1 and 100"""
for i in range(1, 101):
    if i % 5 == 0:
        print(i)
# Output: 5 10 15 ... 100


"""6. Sum of numbers from 1 to n"""
n = 5
s = 0
for i in range(1, n + 1):
    s += i
print(s)
# Output: 15


"""7. Sum of even numbers from 1 to n"""
n = 10
s = 0
for i in range(1, n + 1):
    if i % 2 == 0:
        s += i
print(s)
# Output: 30


"""8. Sum of odd numbers from 1 to n"""
n = 10
s = 0
for i in range(1, n + 1):
    if i % 2 != 0:
        s += i
print(s)
# Output: 25


"""9. Product of numbers from 1 to n"""
n = 5
p = 1
for i in range(1, n + 1):
    p *= i
print(p)
# Output: 120


"""10. Count digits in a number"""
num = "12345"
c = 0
for i in num:
    c += 1
print(c)
# Output: 5


"""11. Reverse a number"""
num = "1234"
rev = ""
for i in num:
    rev = i + rev
print(rev)
# Output: 4321


"""12. Palindrome check"""
num = "121"
rev = ""
for i in num:
    rev = i + rev
if num == rev:
    print("Palindrome")
else:
    print("Not Palindrome")
# Output: Palindrome


"""13. Sum of digits"""
num = "123"
s = 0
for i in num:
    s += int(i)
print(s)
# Output: 6


"""14. Product of digits"""
num = "123"
p = 1
for i in num:
    p *= int(i)
print(p)
# Output: 6


"""15. Count even and odd digits"""
num = "1234"
even = odd = 0
for i in num:
    if int(i) % 2 == 0:
        even += 1
    else:
        odd += 1
print("Even:", even)
print("Odd:", odd)
# Output: Even: 2, Odd: 2


"""16. Factorial of a number"""
n = 5
fact = 1
for i in range(1, n + 1):
    fact *= i
print(fact)
# Output: 120


"""17. Prime number check"""
n = 7
count = 0
for i in range(1, n + 1):
    if n % i == 0:
        count += 1
if count == 2:
    print("Prime")
else:
    print("Not Prime")
# Output: Prime


"""19. Armstrong number check"""
num = "153"
power = len(num)
s = 0
for i in num:
    s += int(i) ** power
if s == int(num):
    print("Armstrong")
else:
    print("Not Armstrong")
# Output: Armstrong


"""20. Perfect number check"""
n = 6
s = 0
for i in range(1, n):
    if n % i == 0:
        s += i
if s == n:
    print("Perfect Number")
else:
    print("Not Perfect")
# Output: Perfect Number
