"Student Result System: Input marks of 5 subjects. If any subject < 40 → Fail. Else calculate percentage and grade."

m1=int(input())
m2=int(input())
m3=int(input())
m4=int(input())
m5=int(input())

if m1<40 or m2<40 or m3<40 or m4<40 or m5<40:
    print("Fail")
else:
    per=(m1+m2+m3+m4+m5)/5
    if per>=75:
        print("Grade A")
    elif per>=60:
        print("Grade B")
    elif per>=50:
        print("Grade C")
    else:
        print("Grade D")


"Check whether a given year is a leap year considering century years."

year=int(input())

if year%400==0:
    print("Leap Year")
elif year%4==0 and year%100!=0:
    print("Leap Year")
else:
    print("Not Leap Year")


"Calculate tax based on annual salary slabs."

salary=int(input())

if salary<=250000:
    print("No Tax")
elif salary<=500000:
    print("5% Tax")
elif salary<=1000000:
    print("20% Tax")
else:
    print("30% Tax")


"Check if a triangle is valid using its sides."

a=int(input())
b=int(input())
c=int(input())

if a+b>c and a+c>b and b+c>a:
    print("Valid Triangle")
else:
    print("Invalid Triangle")



"Compare three numbers and find largest, smallest, and equality."

a=int(input())
b=int(input())
c=int(input())

print("Largest:",max(a,b,c))
print("Smallest:",min(a,b,c))

if a==b and b==c:
    print("All Equal")

''' 6.Character Identifier
Input a character and identify whether it is:
Uppercase letter
Lowercase letter
Digit
Special character'''


ch=input()

if ch>='A' and ch<='Z':
    print("Uppercase")
elif ch>='a' and ch<='z':
    print("Lowercase")
elif ch>='0' and ch<='9':
    print("Digit")
else:
    print("Special Character")



"Check password strength based on minimum length."

pwd=input()

if len(pwd)>=8:
    print("Strong Password")
else:
    print("Weak Password")



"Calculate bus fare based on distance and senior citizen discount."

km=int(input())
senior=input()

if km<=10:
    fare=10
elif km<=30:
    fare=20
else:
    fare=30

if senior=="yes":
    fare=fare*0.8

print("Fare:",fare)



"Check exam eligibility using attendance and medical certificate."

att=int(input())
medical=input()

if att>=75 or medical=="yes":
    print("Eligible")
else:
    print("Not Eligible")


"Calculate interest based on account type."

acc=input()
bal=int(input())

if acc=="savings":
    print(bal*0.04)
elif acc=="current":
    print(bal*0.02)
else:
    print(bal*0.06)



"Check whether a number is prime, composite, or neither."

n=int(input())

if n<=1:
    print("Neither")
elif n==2:
    print("Prime")
else:
    print("Prime or Composite")



"Display weather condition based on temperature."

t=int(input())

if t<10:
    print("Very Cold")
elif t<=20:
    print("Cold")
elif t<=30:
    print("Warm")
else:
    print("Hot")



"Calculate discount based on order amount and coupon."

amt=int(input())
coupon=input()

if amt>=1000:
    dis=20
elif amt>=500:
    dis=10
else:
    dis=0

if coupon=="yes":
    dis=dis+5

print("Discount:",dis,"%")



"Display action based on traffic signal color."

s=input()

if s=="red":
    print("Stop")
elif s=="yellow":
    print("Ready")
else:
    print("Go")


"Display greeting based on time."

t=int(input())

if t<12:
    print("Morning")
elif t<17:
    print("Afternoon")
elif t<21:
    print("Evening")
else:
    print("Night")


"Check insurance eligibility based on age, health, and smoking."

age=int(input())
health=input()
smoke=input()

if age>=18 and health=="yes" and smoke=="no":
    print("Eligible")
else:
    print("Not Eligible")



"Display data benefits based on recharge amount."

amt=int(input())

if amt==199:
    print("1.5GB/day")
elif amt==299:
    print("2GB/day")
elif amt==499:
    print("Unlimited")
else:
    print("Invalid Plan")


"Validate shopping cart based on stock, balance, and delivery."

stock=input()
bal=int(input())
delivery=input()
price=int(input())

if stock=="yes" and bal>=price and delivery=="yes":
    print("Order Placed")
else:
    print("Order Failed")


"Check promotion eligibility based on rating and experience."

rating=int(input())
exp=int(input())

if rating>=4 and exp>=3:
    print("Promoted")
else:
    print("Not Promoted")



"Add bonus marks for attendance and assign grade."

marks=int(input())
att=int(input())

if att>90:
    marks=marks+5

if marks>=75:
    print("Grade A")
elif marks>=60:
    print("Grade B")
elif marks>=50:
    print("Grade C")
else:
    print("Grade D")
