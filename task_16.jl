function mark_field(r)
    side=Ost
    mark_row(r,side)

    while isborder(r,side)==false
        move!(r,Nord)
        side=inverse(side)
        mark_row(r,side)
    end
 end
function mark_row(r::Robot,side::HorizonSide)
    putmarker!(r)

    while move_if_posible!(r,side) == true
        putmarker!(r)
    end
end