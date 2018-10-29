function path_key = key_generator()
  init_names();
  state = rand("state");
  path_key = [path_to_key,datestr(clock()),".key"];
  path_key = strrep(path_key," ","-");
  path_key = strrep(path_key,":","-");
  save(path_key,"state");
endfunction