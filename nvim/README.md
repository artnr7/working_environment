## Полное руководство по изучению nvim лежит в kickstart.nvim/init.lua

luarocks - обязателен для установки, потому что некоторые плагины его требуют
### Топ плагинов для nvim
Mason — менеджер установки LSP, линтеров и форматтеров.

nvim-treesitter — точное синтаксическое выделение, умные текстовые объекты,
инкрементальный парсинг, поддержка множества языков.

Telescope — мощный менеджер поиска и навигации по файлам и символам.

nvim-tree.lua — дерево файлов с иконками.

lualine.nvim — красивая и информативная строка состояния.

nvim-cmp — современный движок автодополнения.


alpha-nvim — красивое стартовое окно.

vim-gitgutter — отображение изменений в строках, связанных с Git.

fzf.nvim — быстрый поиск по файлам и символам.

nvim-dap — отладчик с поддержкой многих языков.

ChatGPT.nvim — интеграция с ChatGPT для автогенерации кода.

Todo Comments — выделение комментариев TODO, FIXME и др.

### Themes
github.com/topics/neovim-colorscheme
github.com/vague-theme/vague.nvim


github.com/scottmckendry/nix/tree/0fc0b9ce9f87283c35c261af74bfd222ef5886f8/nvim
https://www.youtube.com/watch?v=m8C0Cq9Uv9o&t=73s
https://www.youtube.com/watch?v=CuWfgiwI73Q
Полезный репозиторий, на котором можно найти kickstart и топ плагинов
https://github.com/nvim-lua
Тред посвящённый смене esc на capslock
https://www.reddit.com/r/neovim/comments/12inq2s/how_to_keymap_caps_lock_key_to_be_used_as_esc_for/


### Некоторые штуки, которые были полезны лично мне
* Чтобы посмотреть документацию по какой-либо функции используйте help <func
* При объявлении плагина в таблице есть два варианта установки/проверки_установки:  
    1. Вы пишите в этой же таблице opts = {}, что будет подразумевать передачу параметров по умолчанию  
    2. Либо require('название_плагина').setup({})


Mason - это такой плагин, который скачивает бинарники самих lsp-серверов, в отличие от lazy.nvim, который скачивает плагины написанные на lua
