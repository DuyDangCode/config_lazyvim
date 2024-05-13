return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                svelte = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                graphql = { "prettier" },
                lua = { "stylua" },
                python = { "isort", "black" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },
            formatters = {
                prettier = {
                    prepend_args = { "--single-quote", "--no-semi", "--trailing-comma none", "--jsx-single-quote" },
                    cli_options = {
                        arrow_parens = "always",
                        bracket_spacing = true,
                        bracket_same_line = false,
                        embedded_language_formatting = "auto",
                        end_of_line = "lf",
                        html_whitespace_sensitivity = "css",
                        -- jsx_bracket_same_line = false,
                        jsx_single_quote = true,
                        print_width = 80,
                        prose_wrap = "preserve",
                        quote_props = "as-needed",
                        semi = false,
                        single_attribute_per_line = false,
                        single_quote = true,
                        tab_width = 2,
                        trailing_comma = "es5",
                        use_tabs = false,
                        vue_indent_script_and_style = false,
                    },
                },
            },
        })

        -- conform.options = {
        --
        -- }

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
