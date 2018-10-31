function random_variables_generator
  global size_x size_y curr_key_name block_size_x block_size_y block_num_x block_num_y;
  key_setter(curr_key_name);
  permuted = randperm(block_num_x*block_num_y);
  clear -global permuted_mat;
  global permuted_mat = reshape(permuted,block_num_x,block_num_y);
  W = zeros(1,6);
  for iter = 1:6
    W(iter) = rand;
  endfor
%  disp(W);
  
endfunction
