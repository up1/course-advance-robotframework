ROBOT_LISTENER_API_VERSION = 3

def end_test(data, result):
    if not result.passed:
        print('Test "%s" failed: %s' % (result.name, result.message))