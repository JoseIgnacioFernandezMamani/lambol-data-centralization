# Devcontainer

Isolated development environment using container technology.

> [Create a development container step by step](https://code.visualstudio.com/docs/devcontainers/create-dev-container)

Additional tools to install
Initialization commands

## devcontainer.json

Allows you to specify

```json
{
  "name": "container-name",
  // Base image of the container
  "image": "base-imagen",

  "customizations": {
    "vscode": {
      // VS Code extensions to install
      "extensions": [
        "dbaeumer.vscode-eslint",
        "esbenp.prettier-vscode",
        "streetsidesoftware.code-spell-checker"
      ],

      // VScode's configurations
      "settings": {
        "eslint.validate": ["javascript", "typescript"],
        "editor.formatOnSave": true,
        "editor.defaultFormatter": "esbenp.prettier-vscode"
      }
    }
  },

  // Ports to expose
  "fordwardPorts": [3000],

  // Add features
  "features": {
    "ghcr.io/devcontainers/features/node:1": {
      "version": "lts"
    },
    "ghcr.io/devcontainers/features/github-cli:1": {}
  },

  // runs after creating the container
  "postCreateCommand": "npm install -g yarn npm@latest npm-check-updates",

  // runs every time the container starts
  "postStartCommand": ["npm install", "npm run prepare"],

  //
  "postAttachCommand": [
    "git config --global user.name 'Developer name'",
    "git config --global user.email 'Developer@example.com'"
  ],

  // arguments for the container
  "containerEnv": {
    "NODE_ENV": "development"
  },

  // volume mounting
  "mounts": [
    "source=profile,target=/root,type=volume",
    // anonymous volume
    "target=/root/.vscode-server,type=volume"
  ]
}
```

## Main commands

press F1

> Dev Containers: Add Dev Container Configuration Files: Add configuration files
> Dev Containers: Rebuild and reopen in Container: Rebuilds the container with changes

## Tips

- configure file sharing between the host machine and docker.
- .gitattibute to handle difference between line endings on windows and linux [CRLF and LF](./git.md#crlf-vs-lf).
- Define mount points to store shell history and automatic update of vscode extensions.

## Devcontainer CLI

commandos

```bash
devcontainer <command>

Commands:
  devcontainer up                   Create and run dev container
  devcontainer build [path]         Build a dev container image
  devcontainer run-user-commands    Run user commands
  devcontainer read-configuration   Read configuration
  devcontainer features             Features commands
  devcontainer templates            Templates commands
  devcontainer exec <cmd> [args..]  Execute a command on a running dev container

Options:
  --help     Show help                                                 [boolean]
  --version  Show version number                                       [boolean]
```
