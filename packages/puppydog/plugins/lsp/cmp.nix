let
  get_bufnrs.__raw = ''
    function()
      local buf_size_limit = 1024 * 1024 -- 1MB size limit
      local bufs = vim.api.nvim_list_bufs()
      local valid_bufs = {}
      for _, buf in ipairs(bufs) do
        if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf)) < buf_size_limit then
          table.insert(valid_bufs, buf)
        end
      end
      return valid_bufs
    end
  '';
in
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
            options = {
              inherit get_bufnrs;
            };
          }
          {
            name = "nvim_lsp_signature_help";
            priority = 1000;
            options = {
              inherit get_bufnrs;
            };
          }
          {
            name = "nvim_lsp_document_symbol";
            priority = 1000;
            options = {
              inherit get_bufnrs;
            };

          }
          {
            name = "copilot";
            priority = 900;
          }
          {
            name = "treesitter";
            priority = 800;
            options = {
              inherit get_bufnrs;
            };
          }
          {
            name = "path";
            priority = 700;
          }
          {
            name = "buffer";
            priority = 500;
            options = {
              inherit get_bufnrs;
            };

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
