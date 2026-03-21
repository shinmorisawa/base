project('basic', 'c',
  version: '0.1',
  default_options: ['warning_level=3', 'c_std=gnu2x', 'werror=true', 'optimization=3']
)

add_project_arguments(
  '-Wno-gnu-statement-expression-from-macro-expansion',
  language: 'c'
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
