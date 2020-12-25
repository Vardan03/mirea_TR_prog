function kv!(r::Robot)# - главная функция 
    for side in (Nord, West, Sud, Ost) # - перебор всех возможных направлений
        move_till_border!(r, side)
        putmarkers_border!(r, side)
    end
    show!(r)
end

function move_till_border!(r::Robot, side::HorizonSide) 
    while isborder(r, Nord) == false
        move!(r, Nord)
    end
end

function putmarkers_border!(r::Robot, side::HorizonSide)
    for side in (Ost, Sud, West, Nord)
        while isborder(r, side) == false
            putmarker!(r)   
            move!(r, side)     
        end
    end
end