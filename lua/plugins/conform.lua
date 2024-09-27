return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["javascriptreact"] = { "prettier" },
      ["typescript"] = { "prettier" },
      ["typescriptreact"] = { "prettier" },
      ["vue"] = { "prettier" },
      ["javascript"] = { "prettier" },
      ["css"] = { "prettier" },
      ["scss"] = { "prettier" },
      ["less"] = { "prettier" },
      ["html"] = { "prettier" },
      ["json"] = { "prettier" },
      ["jsonc"] = { "prettier" },
      ["yaml"] = { "prettier" },
      ["markdown"] = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      ["graphql"] = { "prettier" },
      ["handlebars"] = { "prettier" },
      ["java"] = { "google-java-format" },
      ["go"] = { "gofmpt", "goimports" },
      ["rust"] = { "rustfmt" },
      ["python"] = { "black" },
    },
    formatters = {
      prettier = {
        prepend_args = { "--single-quote", "--no-semi", "--trailing-comma none", "--jsx-single-quote" },
      },
    },
  },
}
