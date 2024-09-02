{
  plugins.nvim-jdtls = {
    enable = false;
    data = "$HOME/workspace";
    configuration = "$HOME/config";
    settings = {
      java = {
        signatureHelp = true;
        completion = true;
      };
    };
  };
}
