function valid=valid_date(year,month,day)

if ceil(year)~=floor(year) || ceil(month)~=floor(month) || ceil(day)~=floor(day) 
    valid=false; 
end
if ceil(year)==floor(year) && ceil(month)==floor(month) && ceil(day)==floor(day)
    if month==1||month==3||month==5||month==7||month==8||month==10||month==12 && day<=31
    valid=true;
    elseif month==4||month==6||month==9||month==11 && day<=30
    valid=true; 
    elseif month==2 && day<=28
    valid=true;
   elseif month==2 && day<=29 && year/4==floor(year/4) && year/400==floor(year/400) || year/100==floor(year/100)
    valid=true;
   else 
    valid=false;
    end
end