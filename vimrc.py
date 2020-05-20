import snake  # noqa
import re
import os
from snake import keys, get, get_current_buffer, get_buffer_contents, command  # noqa


# https://github.com/amoffat/snake/blob/master/docs/api_reference.md

@snake.preserve_state()
@snake.key_map('<leader>js')
def nvim_ipy_run_selected():
    file = get_buffer_contents(get_current_buffer())
    for i, line in enumerate(file.splitlines()):
        if re.search('^##!', line):
            snake.set_cursor_position((i + 1, 0))
            command('call IPyRunCell()')

# @snake.key_map('<leader>jk')
# def connect_to_ipykernel():
#     kernel_name = f'ipykernel_{os.path.basename(os.getcwd())}'
#     command(
#         f"call IPyConnect('--kernel', '{kernel_name}', '--no-window')"
#     )
