local color = {
  bg = "#21283B",
  bg_focused = "#92B3F5",
  fg = "#ABB2BF",
  fg_focused = "#050505",
}

require("cokeline").setup({
  default_hl = {
    fg = function(buffer)
      return buffer.is_focused and color.fg_focused or color.fg
    end,
    bg = function(buffer)
      return buffer.is_focused and color.bg_focused or color.bg
    end,
  },
  components = {
    {
      text = function(buffer)
        return "   " .. buffer.devicon.icon
      end,
      fg = function(buffer)
        return buffer.is_focused and color.fg_focused or color.fg
      end,
    },
    {
      text = function(buffer)
        return buffer.index .. ": "
      end,
    },
    {
      text = function(buffer)
        return buffer.filename
      end,
      bold = function(buffer)
        return buffer.is_focused
      end,
    },
    {
      text = function()
        return "   "
      end,
    },
  },
})
