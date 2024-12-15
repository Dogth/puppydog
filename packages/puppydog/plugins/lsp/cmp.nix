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
          {
            name = "nvim_lsp";
            priority = 1000;
          }
          {
            name = "path";
            priority = 1000;
          }
          {
            name = "nvim_lsp_signature_help";
            priority = 1000;
          }
          {
            name = "nvim_lsp_document_symbol";
            priority = 1000;
          }
          {
            name = "cmdline";
            priority = 500;
          }
          {
            name = "treesitter";
            priority = 850;
          }
          {
            name = "buffer";
            priority = 500;
          }
        ];

        formatting = {
          fields = [
            "kind"
            "abbr"
            "menu"
          ];
        };

        mapping = {
          "<S-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-e>" = "cmp.mapping.close()";
          "<CR>" = "cmp.mapping.confirm({select = true})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i','s'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i','s'})";
        };
      };
    };
  };
}
