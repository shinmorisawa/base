project('basic', 'c',
  version: '0.1',
  default_options: ['warning_level=3', 'c_std=gnu2x', 'werror=true', 'optimization=3']
)

add_project_arguments(
  '-Wno-gnu-statement-expression-from-macro-expansion',
  language: 'c'
)

# release args
if get_option('buildtype') == 'release'
  add_project_arguments(
    '-DBASE_NO_DEBUG',
    language: 'c'
  )
endif

# debug args
if get_option('buildtype') == 'debug'
  add_project_arguments(
    '-fno-omit-frame-pointer',
    language: 'c'
  )
endif

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
