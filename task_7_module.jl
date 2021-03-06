using .ShessMark, .StatBack

function mark_chess(robot)
    init(isodd(sum(move_to_start!((Sud,West)))) 

    side = Ost;
    mark_chess(robot,side);
    while isborder(Nord)==false
        move!(robot,Nord)
        side = inverse(side)
        mark_chess(robot,side)
    end


    for side in (West,Sud) movements!(robot,side);
    move_to_back(robot)


function mark_chess(r,side)
    ShessMark.putmarker!(r)
    while isborder(r,side)==false
        move!(r,side)
        ShessMark.putmarker!(r)
    end
end