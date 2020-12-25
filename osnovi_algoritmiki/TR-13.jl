function paint_X!(r::Robot)
    paint_X_Sud_right(r)
    paint_X_Sud_left(r)
    paint_X_Nord_left(r)
    paint_X_Nord_right(r)
    putmarker!(r)
end

function paint_X_Sud_right(r::Robot)
    while isborder(r, Nord) == false
        if isborder(r, Sud) == false
            if isborder(r, Ost) == false
                move!(r, Ost)
                move!(r, Sud)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:100
        move!(r, Nord)
        move!(r, West)
        if ismarker(r) == false
            break
        end
    end
end



function paint_X_Sud_left(r::Robot)
    while isborder(r, Nord) == false
        if isborder(r, Sud) == false
            if isborder(r, West) == false
                move!(r, West)
                move!(r, Sud)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:100
        move!(r, Nord)
        move!(r, Ost)
        if ismarker(r) == false
            break
        end
    end
end

function paint_X_Nord_left(r::Robot)
    while isborder(r, Sud) == false
        if isborder(r, Nord) == false
            if isborder(r, West) == false
                move!(r, West)
                move!(r, Nord)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:100
        move!(r, Sud)
        move!(r, Ost)
        if ismarker(r) == false
            break
        end
    end
end

function paint_X_Nord_right(r::Robot)
    while isborder(r, Sud) == false
        if isborder(r, Nord) == false
            if isborder(r, Ost) == false
                move!(r, Ost)
                move!(r, Nord)
                putmarker!(r)
            else
                break
            end
        else
            break
        end
    end 
    
    for i in 1:100
        move!(r, Sud)
        move!(r, West)
        if ismarker(r) == false
            break
        end
    end
end