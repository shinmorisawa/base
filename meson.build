project('basic', 'c',
  version: '0.1',
  default_options: ['warning_level=3', 'c_std=gnu2x', 'werror=true']
)

srcs = files(
  # files go here
  # (or in 'folder'/meson.build)
)

# optional subdir('folder')
subdir('src')

include = include_directories(
  'include'
)

cc = meson.get_compiler('c')
math_dep = cc.find_library('m', required: true)

executable('basic', srcs,
  include_directories: include,
  install: true,
  dependencies: [math_dep]
)
