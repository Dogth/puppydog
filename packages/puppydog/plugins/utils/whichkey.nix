{
  plugins.which-key = {
    enable = true;

    settings = {
      spec = [
        {
          __unkeyed = "<leader>b";
          group = "Buffers";
        }
        {
          __unkeyed = "<leader>u";
          group = "Utils";
        }
      ];
    };
  };
}
