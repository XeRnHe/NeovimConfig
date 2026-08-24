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
                desc = "Save, compile and run C++",
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
                cpp = table.concat({
                    "cd $dir",
                    "clang++ -std=c++20 -O2 -Wall -Wextra -Wshadow $fileName -o /tmp/$fileNameWithoutExt",
                    "/tmp/$fileNameWithoutExt",
                }, " && "),
            },
        },
    },
}
