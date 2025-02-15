local function load_plugin(name)
  -- Will attempt to load a custom override of a plugin
  
  local custom_plugin_path = 'lua/custom/plugins/' .. name

  local f = io.open(custom_plugin_path, 'r')

  if f ~= nil then
    io.close(f)
    return { import = 'custom.plugins.' .. name }
  else
    return { import = 'plugins.' .. name }
  end
end

return {
  load_plugin = load_plugin,
}
