function find_passage(r::Robot,side::HorizonSide)
    num_steps=0; side=Ost
    while isborder(r,Nord)==true # прохода сверху нет
        num_steps+=1
        move!(r,side,num_steps)
        side=inverse(side)
    end
end

move!(r,side,num_steps)=for _ in 1:num_steps move!(r,side) end

inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+2, 4)) 