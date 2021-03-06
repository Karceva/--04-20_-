function mark_angles(r)
    num_steps = through_rectangles_into_angle(r,(Sud,West))
    for side in (Nord,Ost,Sud,West)
        moves!(r,side)
        putmarker!(r)
    end
    move!(r,(Ost,Nord),num_steps)
end

function through_rectangles_into_angle(r,angle::NTuple{2,HorizonSide})
    num_steps=[]
    while isborder(r,angle[1])==false || isborder(r,angle[2])
        push!(num_steps, moves!(r, angle[2]))
        push!(num_steps, moves!(r, angle[1]))
    end
    return num_steps
end

function moves!(r,sides,num_steps::Vector{Int64})
    for (i,n) in enumerate(reverse!(num_steps))
        moves!(r, sides[mod(i-1, length(sides))+1], n)
    end
end
