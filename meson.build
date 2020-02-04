project('mini-test', ['c'], version: '1.1.1')

minitest_dir = include_directories('include')
sources = []
if host_machine.system() == 'Windows'
  sources = [ 'src/spawn-win.c' ]
else
  sources = [ 'src/spawn-unix.c' ]
endif
minitest_lib = static_library('mini-test',
    sources: sources,
    include_directories: [minitest_dir])

t = executable('mini-test_test',
    sources: [
      'test/test.c'
    ],
    link_with: [minitest_lib],
    include_directories: [minitest_dir])

test('minitest.c test', t)

