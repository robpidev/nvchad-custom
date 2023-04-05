local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

treesitter.setup {
  rainbow = {
    enable = true,
    colors = {
      "#fdb61d",
      "#ee62f0",
      "#ed588a",
      "#6179e2",
      "#54ea8d",
      "#f67535",
      "#68a0b0",
      "#946eaD",
      "#c4aA6D",
    }
  }
}
