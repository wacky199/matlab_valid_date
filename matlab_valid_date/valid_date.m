function valid=valid_date(year,month,day)

if (ceil(year)~=floor(year) || ceil(month)~=floor(month) || ceil(day)~=floor(day)) && (year>0 && month>0 && day>0)
    valid=false;
end
if (~isscalar(year)) || (~isscalar(month)) || (~isscalar(day)) 
    valid=false;
end
if (ceil(year)==floor(year) && ceil(month)==floor(month) && ceil(day)==floor(day)) && (year>0 && month>0 && day>0)
    if (month==1||month==3||month==5||month==7||month==8||month==10||month==12) && day<=31
       valid=true;
    elseif  day<=30 && (month==4||month==6||month==9||month==11) 
       valid=true; 
    elseif month==2 && day<=28
       valid=true;
    elseif month==2 && day<=29 && year/4==floor(year/4)
          if year/100==floor(year/100) && year/400==floor(year/400)
              valid=true;
          elseif year/100==floor(year/100) && year/400~=floor(year/400)
              valid=false;
          else 
              valid=true;
          end
    else 
       valid=false;
    end
else
    valid=false;
end
   