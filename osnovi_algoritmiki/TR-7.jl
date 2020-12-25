function chess!(r::Robot)
    move_till_border!(r) 
    paint_vertival!(r)
    move!(r,Nord)
    paint_Horizon!(r)
    move_till_border!(r) 
end

function move_till_border!(r::Robot) 
    while isborder(r, Sud) == false
        move!(r, Sud)
    end
    while isborder(r, West) == false
        move!(r, West)
    end
end

function paint_vertival!(r::Robot)
    for i in 1:10
        for j in 1:5
            if isborder(r, Nord) == false
                putmarker!(r)
                move!(r, Nord)
                if isborder(r,Nord) == false
                    move!(r, Nord)
                end
            end
        end
        putmarker!(r)
        for k in 1:11
            if isborder(r, Sud) == false
                move!(r, Sud)
            end
        end
        if isborder(r, Ost) == false
            move!(r, Ost)
            if isborder(r,Ost) == false
                move!(r, Ost)
            end
        end
        if isborder(r,Ost) == true
            break
        end
    end
end

function paint_Horizon!(r::Robot)
    for i in 1:10
        for j in 1:5
            if isborder(r, West) == false
                putmarker!(r)
                move!(r, West)
                if isborder(r,West) == false
                    move!(r, West)
                end
            end
        end
        putmarker!(r)
        for k in 1:11
            if isborder(r, Ost) == false
                move!(r, Ost)
            end
        end
        if isborder(r, Nord) == false
            move!(r, Nord)
            if isborder(r,Nord) == false
                move!(r, Nord)
            end
        end
        if isborder(r,Nord) == true
            break
        end
    end
end