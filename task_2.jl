function mark_frame_perimetr!(r::Robot, side::HorizonSide)
    num_vert = moves!(r, Sud)
    num_hor = moves!(r, West)
    putmarkers!(r)
    moves!(r, Nord, num_vert)
    moves!(r, Ost, num_hor)
end
putmarkers!(r::Robot) =
  for side in (Nord,West,Sud,Ost) 
      while isborder(r,side)==false 
          move!(r,side)
         putmarker!(r)
      end
    end
function moves!(r::Robot, side::HorizonSide)
    num_steps=0
    while isborder(r,side)==false
        move!(r,side)
        num_steps+=1
    end
    return num_steps
end

function moves!(r::Robot,side::HorizonSide,num_steps::Int)
    for _ in 1:num_steps
        move!(r,side)
    end
end