function valid = valid_date(year, month, day)
    valid = false;
    if ~(isscalar(year) && isscalar(month) && isscalar(day))
        valid = false;
        return
    end
    is_leap_year = false;
    if (mod(year, 4) == 0 && mod(year, 100) ~= 0) || mod(year, 400) == 0
        is_leap_year = true;
    else
        is_leap_year = false;
    end
    
    if year > 0 && month > 0 && day > 0
        if is_leap_year == true
            if month <= 12 && day <= 31
                if ((month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && day <=31), valid = true;
                elseif (month == 2 && day <=29), valid = true;
                elseif ((month == 4 || month == 6 || month == 9 || month == 11 ) && day <=30), valid = true;
                else
                    valid = false;
                end
            else, valid = false;
            end
        elseif is_leap_year == false
            if month <= 12 && day <= 31
                if ((month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && day <=31), valid = true;
                elseif (month == 2 && day <=28), valid = true;
                elseif ((month == 4 || month == 6 || month == 9 || month == 11 ) && day <=30), valid = true;
                else
                    valid = false;
                end
            else, valid = false;
            end
        else
            valid = false;
        end
    end
    end