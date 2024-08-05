local heyai = function()
  if os.getenv("NVIM_AI") == "true" then
    return true
  else
    return false
  end
end

return {
  {
    "smallcloudai/refact-neovim",
    lazy = false,
    cond = heyai,
    opts = {
      --address_url = "http://192.168.41.71:8008",
      address_url = "https://refact.ai.sergevictor.eu",
      api_key = "AAAA-BBBB-CCCC-DDDD",
    },
  },
}
