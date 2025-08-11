castvote() -> (
  [what, count, nbt] = query(get(entity_selector('@s'), 0), 'holds', 'mainhand');
  name = get(get(get(nbt, 'components'), 'minecraft:profile'), 'name');
  scoreboard('vote', name, scoreboard('vote', name) + 1);
  print(format(['e You have voted for: ', 'y ' + name]));
)
