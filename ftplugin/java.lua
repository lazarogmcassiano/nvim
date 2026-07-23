local jdtls = require("jdtls")

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local workspace_dir =
    vim.fn.expand("~/.cache/jdtls/") .. project_name

local config = {
    cmd = {
        "jdtls",
        "-data",
        workspace_dir,
    },

    root_dir = jdtls.setup.find_root({
        "pom.xml",
        "build.gradle",
        ".git",
    }),

    settings = {
        java = {
            format = {
                enabled = true,
            },

            errors = {
                incompleteClasspath = {
                    severity = "warning",
                },
            },

            saveActions = {
                organizeImports = true,
            },
        },
    },

    init_options = {
        extendedClientCapabilities = 
            jdtls.extendedClientCapabilities,
    },
}

jdtls.start_or_attach(config)
