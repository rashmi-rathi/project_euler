'''
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

1 Jan 1900 was a Monday
'''

'''
This is the brute force way to program it. Is there better way to do it?
'''

def is_leap(year):
    if (year%4== 0 and year%100 != 0) or year%400 == 0 :
         return True
    else:
        return False
        
def output_day(day,month,year):    
#I think this only gives correct output for year > 1900

    days_in_months = [31,28,31,30,31,30,31,31,30,31,30,31]        
    number_of_leap_years = 0  
    total_days = 0
    for i in range(1900,year):
        if is_leap(i) == True:
            number_of_leap_years = number_of_leap_years + 1 
    month_days = sum(days_in_months[:month-1])   
    
    if is_leap(year) == True and month > 2:
        month_days = month_days + 1

    total_days = day + month_days + (year - number_of_leap_years - 1900)*365 + number_of_leap_years*366
    
    day = total_days % 7 
    return day

def print_day(x,y,z):
    day = output_day(x,y,z)
    if day == 0:
        print 'sunday'
    elif day == 1:
        print 'monday'
    elif day == 2 :
        print 'tuesday'
    elif day == 3:
        print 'wednesday'
    elif day == 4:
        print 'thursday'
    elif day == 5:
        print 'friday'
    elif day == 6:
        print 'saturday'

def Problem19():   
    number_of_sundays = 0
    for year in range(1901,2001):
        for month in range(1,13):
            if output_day(1,month,year) == 0:
                number_of_sundays = number_of_sundays + 1      
    print 'Number of Sundays which lie on the first of the months are ' + str(number_of_sundays)