{
  plugins.yazi = {
    enable = true;
    settings = {
      floating_window_scaling_factor = 0.5;
      open_for_directories = true;

      keymaps = {
        copy_relative_path_to_selected_files = "<c-C>";
        cycle_open_buffers = "<tab>";
        grep_in_directory = "<c-g>";
        open_file_in_horizontal_split = "<c-h>";
        open_file_in_vertical_split = "<c-v>";
        open_file_in_tab = "<c-t>";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>y";
      action.__raw = ''
        function()
          require("yazi").yazi()
          end
      '';
      options = {
        desc = "Open Yazi";
        silent = true;
      };
    }
  ];
}
