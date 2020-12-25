function paint!(r::Robot)
    move_till_border!(r)
    putmarkers_border!(r)
    show!(r)
end
  
function move_till_border!(r::Robot) 
    while isborder(r, Nord) == false
        move!(r, Nord)
    end
    while isborder(r, West) == false
        move!(r, West)
    end
end

function putmarkers_border!(r::Robot)
    while ismarker(r) == false
        while isborder(r, Sud) == false
            putmarker!(r)
            move!(r, Sud)
        end
        if isborder(r, Ost) == false
            putmarker!(r)
            move!(r, Ost)
        end
        while isborder(r, Nord) == false
            putmarker!(r)
            move!(r, Nord)
        end
        if isborder(r, Ost) == false
            putmarker!(r)
            move!(r, Ost)
        end
    end
end