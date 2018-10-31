function image_depermuter
  global permuted_mat image block_size_x block_size_y block_num_x block_num_y size_x size_y permuted_image_name;
  for i=1:block_num_x
    for j=1:block_num_y
      val = permuted_mat(i,j);
      perm_x = mod(val-1,block_num_x)+1;
      perm_y = floor((val-1)/block_num_x)+1;
      permuted_image(ind_gen(perm_x,block_size_x),ind_gen(perm_y,block_size_y),:) = image(ind_gen(i,block_size_x),ind_gen(j,block_size_y),:);
    endfor
  endfor
  imwrite(permuted_image,permuted_image_name);
endfunction
