
def FlagsForFile(filename, **kwargs):
    flags = [
        '-xc++',
        '-std=c++11',
        '-Wall',
        '-Wextra',
        '-Werror'
        '-pedantic',
    ]
    return {
        'flags': flags,
        'do_cache': True
    }
