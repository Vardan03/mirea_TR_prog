function average_temperature!(r::Robot)
    move_till_border!(r)
    move_by_field!(r::Robot)
end

function move_till_border!(r::Robot) 
    while isborder(r, Nord) == false
        move!(r, Nord)
    end
    while isborder(r, West) == false
        move!(r, West)
    end
end



function move_by_field!(r::Robot)
    sum = 0
    k = 0
    while isborder(r, Nord) && isborder(r, Ost) == false
        while isborder(r, Sud) == false
            if ismarker(r) == true
                k = k + 1
                sum = sum + temperature(r)
            end
            move!(r, Sud)
        end
        if isborder(r, Ost) == false
            move!(r, Ost)
        end
        while isborder(r, Nord) == false
            move!(r, Nord)
            if ismarker(r) == true
                k = k + 1
                sum = sum + temperature(r)
            end
        end
        if isborder(r, Ost) == false
            if ismarker(r) == true
                k = k + 1
                sum = sum + temperature(r)
            end
            move!(r, Ost)
        end
    end
    if k > 0
        print(sum / k)
    else 
        print("0")
    end
end                                      