return {
  {
    name = "Show Hue Colors",
    cmd = function()
      require("minty.huefy").open()
    end,
    rtxt = "Huefy",
  },
  {
    name = "Show Shade Colors",
    cmd = function()
      require("minty.shades").open()
    end,
    rtxt = "Shades",
  },
}
