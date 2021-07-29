HEIGHT=400
WIDHT=400
BACKGROUND= colorant"purple"
alien_actor=Actor("alien.png")
alien_actor.pos= (120,180)
text_actor=TextActor("hello boys","moonhouse")

text_actor.pos=(120,120)
rect=Rect(50,100,20,50)
cir = Circle(330,80,20)

i=0
function draw()
    draw(alien_actor)
    draw(text_actor)
    draw( Line(50+i,100,350+i,100),colorant"yellow")
    draw(rect,colorant"white",fill=true)
    draw(cir,colorant"black",fill=true)
end


function update()
    alien_actor.x=alien_actor.x+2
    alien_actor.y+=1
    text_actor.y+=1
    global i
    i+=10
end