function money = rich(v)

money = (v(1) * 1/100) + (v(2) * 5/100) + (v(3) * 10/100) + (v(4) * 25/100);

money = round(money, 2);

end