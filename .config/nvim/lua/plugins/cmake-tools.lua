return {
   "Civitasv/cmake-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("cmake-tools").setup {
            cmake_build_directory = "build",
            cmake_soft_link_compile_commands = false,
            cmake_generate_options = {
                "-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
                "-DCMAKE_C_COMPILER=clang",
                "-DCMAKE_CXX_COMPILER=clang++ ",
                "-G Ninja",
                "-DCMAKE_BUILD_TYPE=RelWithDebInfo",
            },
            cmake_executor = {
                name = "quickfix", -- name of the executor
                opts = {
                    show = "always",
                    position = "belowright",
                    size = 15,
                    auto_close_when_success = false,
                }
            },
            cmake_runner = {
                name = "quickfix", -- name of the runner
                opts = {
                    show = "always",
                    position = "belowright",
                    size = 15,
                    auto_close_when_success = false,
                }
            },
        }
    end,
}
