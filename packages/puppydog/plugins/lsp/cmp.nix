{
  plugins = {
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-cmdline.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        experimental.ghost_text = true;
        sources = [
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "cmdline";}
          {name = "codeium";}
          {name = "treesitter";}
          {name = "buffer";}
        ];

        formatting = {
          fields = ["kind" "abbr" "menu"];
        };

        mapping = {
          "<S-Space>" = "cmp.mapping.complete()";
          "<S-d>" = "cmp.mapping.scroll_docs(-4)";
          "<S-f>" = "cmp.mapping.scroll_docs(4)";
          "<S-e>" = "cmp.mapping.close()";
          "<CR>" = "cmp.mapping.confirm({select = true})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i','s'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i','s'})";
        };
      };
    };
  };
}