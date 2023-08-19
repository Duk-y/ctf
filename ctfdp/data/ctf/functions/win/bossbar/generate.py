# (min_index, max_index, timeString)
nodes = [ ( (2*i), (2*i +1), f'{round(i/10,1)} seconds' ) for i in range( 0, (60*10) )] + [ ( (20*i), (20*i+19), f'{i//60}:{"0" if (i%60) <= 9 else ""}{i%60}' ) for i in range( (60), (5*60) )]
nodes.sort(key=(lambda x: x[0]))

#'''

def generate_tree(section):
    L = len(section)

    if L == 1:
        return 'execute if score $win_countdown var matches %s run bossbar set minecraft:win_timer name ["",{"text":"Game Over","bold":true,"color":"dark_red"}," in %s"]\n' % ( f'{section[0][0]}..{section[0][1]}', section[0][2] )
    else:
        with open(('main.mcfunction' if (L == len(nodes)) else f'tree/{section[0][0]}..{section[L-1][1]}.mcfunction'),'w') as file:
            if L >= 4:
                file.write(generate_tree(section[     0 : L*1//4]))
                file.write(generate_tree(section[L*1//4 : L*2//4]))
                file.write(generate_tree(section[L*2//4 : L*3//4]))
                file.write(generate_tree(section[L*3//4 :       ]))
            else:
                for i in range(L):
                    file.write(generate_tree(section[i:i+1]))
            if (L == len(nodes)):
                file.write('execute if score $win_countdown var matches %s run bossbar set minecraft:win_timer name ["",{"text":"Game Over","bold":true,"color":"dark_red"}," in more than %s minutes"]\n' % ( f'{section[-1][1]+1}..', ((section[-1][1]+1)//20//60) ))
        return f"execute if score $win_countdown var matches {section[0][0]}..{section[L-1][1]} run function ctf:win/bossbar/tree/{section[0][0]}..{section[L-1][1]}\n"

generate_tree(nodes)

print('done')

#'''