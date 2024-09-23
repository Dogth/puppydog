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
            priority = 100;
          }
          {
            name = "path";
            priority = 100;
          }
          {
            name = "nvim_lsp_signature_help";
            priority = 100;
          }
          {
            name = "nvim_lsp_document_symbol";
            priority = 100;
          }
          {
            name = "cmdline";
            priority = 50;
          }
          {
            name = "codeium";
            priority = 30;
          }
          {
            name = "treesitter";
            priority = 85;
          }
          {
            name = "buffer";
            priority = 50;
          }
        ];

        formatting = {
          fields = ["kind" "abbr" "menu"];
        };

        window = {
          completion.__raw = ''cmp.config.window.bordered'';
          documentation.__raw = ''cmp.config.window.bordered'';
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
