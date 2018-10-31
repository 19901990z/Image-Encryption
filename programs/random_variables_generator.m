function random_variables_generator
  global static_image_name size_x size_y curr_key_name block_size_x block_size_y block_num_x block_num_y;
  key_setter(curr_key_name);
  permuted = randperm(block_num_x*block_num_y);
  clear -global permuted_mat W N1 N2;
  global permuted_mat = reshape(permuted,block_num_x,block_num_y);
  global W = zeros(1,6);
  for iter = 1:6
    W(iter) = rand;
  endfor
  temp = (W(1) + W(3))/2;
  diff = rand*0.005;
  W(1) = temp + diff;
  W(3) = temp - diff;
  N1_pos_x = floor(rand*500)
  N1_pos_y = floor(rand*500)
  N2_pos_x = floor(rand*500)
  N2_pos_y = floor(rand*500)
  static_image = imread(static_image_name);
  global N1 = static_image(N1_pos_x:N1_pos_x+size_x-1,N1_pos_y:N1_pos_y+size_y-1,:);
  global N2 = static_image(N2_pos_x:N2_pos_x+size_x-1,N2_pos_y:N2_pos_y+size_y-1,:);
  
endfunction
