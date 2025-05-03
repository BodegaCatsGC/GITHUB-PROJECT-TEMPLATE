
# Obsidian Vault Instructions

This vault is for internal documentation, planning, and knowledge sharing. Use the templates in the `templates/` folder for daily and meeting notes. See `00 Index.md` for navigation.

# Obsidian Vault: GITHUB PROJECT TEMPLATE

This folder contains an Obsidian vault configured for internal project documentation and planning.

## Getting Started

1. Open Obsidian.
2. Select **"Open folder as vault"**.
3. Choose this `obsidian/` directory as your vault root.

## Folder Structure

- **00 Index.md**: Vault dashboard and navigation links.
- **01 Project Planning/**: Roadmaps, to-do lists, and high-level plans.
- **02 Research/**: Notes, references, and background information.
- **03 Code Docs/**: In-depth documentation of code components.
- **04 Meeting Minutes/**: Records of team meetings and decisions.
- **05 Sprint Retros/**: Retrospectives and feedback for each sprint.
- **templates/**: Note templates for daily logs, meeting notes, etc.

## Recommended Plugins

- **Templater**: For inserting dynamic templates (daily logs, meeting notes).
- **Dataview**: To query notes and display tables of tasks.
- **Calendar**: For calendar views of daily notes.
- **Tasks**: To track tasks across your vault.

## Workflows

- Use `templates/daily-note.md` to create new daily notes.
- Add project tasks in **01 Project Planning** and tag them (e.g., `#task`).
- Run `./scripts/sync-docs.sh` to copy static `.md` files from your vault into `docs/` for public documentation.
