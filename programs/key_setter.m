function curr_key = key_setter(key)
  curr_key = load(key).state;
  rand("state",curr_key);
endfunction
