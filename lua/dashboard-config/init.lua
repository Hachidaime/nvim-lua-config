local db = require('dashboard')
db.custom_header = {
    '                            ..                              ',
    '                          ...oo  .                          ',
    '                        ...*@@@@*                           ',
    '                       ..°#@@@@@@#.                         ',
    '                     ...O@@@@@@@@@@O                        ',
    '                   .°.*@@@@@@@@@@@@@@* ..                   ',
    '        .. .°....... #@@@@@@@°°@@@@@@@#  ......°.  .        ',
    '            o@@@@@@@° O@@@@o ** o@@@@O *@@@@@@@o            ',
    '             °@@@@@@@# .@# .@@@@. #@. #@@@@@@@°             ',
    '            °  #@@@@@@@*  O@@@@@@O  *@@@@@@@#  °            ',
    '           ..°O@@@@@@@* o@@@@@@@@@@* *@@@@@@@O.             ',
    '         .°.o@@@@@@@O .@@@@@@@@@@@@@@. #@@@@@@@*            ',
    '        ...@@@@@@@@° O@@@@@@@@@@@@@@@@O °@@@@@@@@.          ',
    '           °#@@@@@@#..O@@@@@@@@@@@@@@O .#@@@@@@#°           ',
    '             o@@@@@@@o °@@@@@@@@@@@@° O@@@@@@@o             ',
    '              .°°°°°°*°  °******°*°  °*°°°°°°.              ',
}
db.custom_center = {
  { icon = '  ', desc = 'Find Files             ', action = 'Telescope find_files', shortcut = ' \\ f f'},
  { icon = '  ', desc = 'Search Text            ', action = 'Telescope live_grep', shortcut = ' \\ f g'},
  { icon = '  ', desc = 'Recent Files           ', action = 'Telescope oldfiles', shortcut = ' \\ f r'},
}
