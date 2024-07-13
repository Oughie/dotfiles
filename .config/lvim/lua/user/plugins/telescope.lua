require("telescope").setup {
    defaults = {
        file_ignore_patterns = {
            "Cargo%.lock",
            ".git/"
        }
    }
}
