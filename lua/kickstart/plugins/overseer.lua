-- Overseer task runner
return {
  'stevearc/overseer.nvim',
  config = function()
    require('overseer').setup {
      -- Strategy for task output
      strategy = {
        'orchestrator',
        'terminal',
      },
      -- Templates to auto-register
      templates = { 'builtin' },
      -- Auto-start task on dir change
      auto_scroll = true,
      -- Default detail level for tasks
      task_list = {
        default_detail = 1,
        max_width = { 100, 0.2 },
        min_width = { 40, 0.1 },
        width = nil,
        max_height = { 20, 0.1 },
        min_height = 8,
        height = nil,
        -- Direction to open the task list
        direction = 'bottom',
      },
      -- Form configuration
      form = {
        border = 'rounded',
        zindex = 40,
        -- Dimensions can be integers or a float between 0 and 1
        min_width = 80,
        max_width = 0.9,
        width = nil,
        min_height = 10,
        max_height = 0.9,
        height = nil,
        -- Set to false to disable win_options override
        win_options = {
          winblend = 0,
        },
      },
      -- Task runner configuration
      task_runner = {
        -- Use task runner to automatically run tasks
        use_shell = true,
      },
      -- Component aliases
      component_aliases = {
        -- Most tasks are initialized with the default components
        default = {
          { 'display_duration', detail_level = 2 },
          'on_output_summarize',
          'on_exit_set_status',
          'on_complete_notify',
          'on_complete_dispose',
        },
        -- Tasks from tasks.json use these components
        default_vscode = {
          'default',
          'on_result_diagnostics',
        },
      },
    }
  end,
  -- Load overseer for these file types
  ft = { 'OverseerForm', 'OverseerList' },
  -- Commands to load overseer
  cmd = {
    'OverseerOpen',
    'OverseerClose',
    'OverseerToggle',
    'OverseerSaveBundle',
    'OverseerLoadBundle',
    'OverseerDeleteBundle',
    'OverseerRunCmd',
    'OverseerRun',
    'OverseerInfo',
    'OverseerBuild',
    'OverseerQuickAction',
    'OverseerTaskAction',
    'OverseerClearCache',
  },
}
