return {
    {
        "xeluxee/competitest.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
        cmd = "CompetiTest",
        keys = {
            {
                "<leader>ta",
                "<cmd>CompetiTest add_testcase<cr>",
                desc = "Add testcase",
            },
            {
                "<leader>te",
                "<cmd>CompetiTest edit_testcase<cr>",
                desc = "Edit testcase",
            },
            {
                "<leader>tr",
                "<cmd>CompetiTest run<cr>",
                desc = "Compile and run testcases",
            },
            {
                "<leader>tn",
                "<cmd>CompetiTest run_no_compile<cr>",
                desc = "Run testcases without compiling",
            },
        },
        opts = {
            runner_ui = {
                interface = "popup",
            },
            save_current_file = true,
            compile_command = {
                cpp = {
                    exec = "clang++",
                    args = {
                        "-std=c++20",
                        "-O2",
                        "-Wall",
                        "-Wextra",
                        "-Wshadow",
                        "$(FNAME)",
                        "-o",
                        "$(FNOEXT)",
                    },
                },
            },
            run_command = {
                cpp = {
                    exec = "./$(FNOEXT)",
                },
            },
            multiple_testing = -1,
            maximum_time = 5000,
            output_compare_method = "squish",
            testcases_use_single_file = false,
            testcases_auto_detect_storage = true,
            testcases_input_file_format = "$(FNOEXT)_input$(TCNUM).txt",
            testcases_output_file_format = "$(FNOEXT)_output$(TCNUM).txt",
        },
    },
}
