def Problem2():
    Fibonnaci = 0
    FibonnaciOne = 1
    FibonnaciTwo = 2
    Sum = 2
    while Fibonnaci < 4*(10**6):
        Fibonnaci = FibonnaciTwo + FibonnaciOne
        FibonnaciOne = FibonnaciTwo
        FibonnaciTwo = Fibonnaci
        if Fibonnaci%2 == 0 :
            Sum = Sum + Fibonnaci   
    return Sum
