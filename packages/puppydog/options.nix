{...}: {
  config = {
    globals.mapleader = " ";

    opts = {
      mouse = "a";

      spell = true;

      number = true;
      relativenumber = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      autoindent = true;
      smartindent = true;

      startofline = true;

      swapfile = false;
      backup = false;
      undofile = true;

      incsearch = true;
      hlsearch = true;

      foldcolumn = "1";
      foldlevel = 99;
      foldlevelstart = -1;
      foldenable = true;

      wrap = false;
      termguicolors = true;
      cursorline = true;
      background = "dark";
    };
  };
}
