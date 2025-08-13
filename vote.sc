castvote() -> (
  [what, count, nbt] = query(get(entity_selector('@s'), 0), 'holds', 'mainhand');
  name = get(get(get(nbt, 'components'), 'minecraft:profile'), 'name');
  scoreboard('vote', name, scoreboard('vote', name) + 1);
  print(format(['e You have voted for: ', 'y ' + name]));
);

pickwinner() -> (
  name = get(sort_key(sort_key(scoreboard('vote'), rand(1)), -scoreboard('vote', _)), 0);
  if (
    name == '#Skip',
    run('function matchbox:meeting/skipped'),
    if (
        name == null,
        run('function matchbox:meeting/abstained'),
        run(str('execute as %s run function matchbox:meeting/voted', player(name)))
    )
  );
);
