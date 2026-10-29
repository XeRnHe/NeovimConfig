return {
    {
        "CRAG666/code_runner.nvim",
        cmd = {
            "RunCode",
            "RunFile",
            "RunProject",
            "RunClose",
        },
        keys = {
            {
                "<F5>",
                "<cmd>write<cr><cmd>RunCode<cr>",
                desc = "Save, compile and run C/C++",
            },
            {
                "<leader>rr",
                "<cmd>write<cr><cmd>RunCode<cr>",
                desc = "Save, compile and run code",
            },
            {
                "<leader>rc",
                "<cmd>RunClose<cr>",
                desc = "Close code runner",
            },
        },
        opts = {
            -- 使用真正的终端，因此程序可以读取键盘输入。
            mode = "term",
            focus = true,
            startinsert = true,
            term = {
                position = "bot",
                size = 15,
            },
            filetype = {
                -- .c 文件使用 C17；严格检查标准语法，编译失败时不会运行旧程序。
                -- 如果课程要求 C99，将 -std=c17 改为 -std=c99。
                c = table.concat({
                    "cd $dir",
                    "clang -std=c17 -O2 -Wall -Wextra -Wshadow -pedantic-errors $fileName -o /tmp/$fileNameWithoutExt.c.out -lm",
                    "/tmp/$fileNameWithoutExt.c.out",
                }, " && "),
                cpp = table.concat({
                    "cd $dir",
                    "clang++ -std=c++20 -O2 -Wall -Wextra -Wshadow $fileName -o /tmp/$fileNameWithoutExt",
                    "/tmp/$fileNameWithoutExt",
                }, " && "),
            },
        },
    },
}
