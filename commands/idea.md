---
description: Capture a coding idea into ~/git/.ideas, word for word
argument-hint: [optional draft of the idea]
---
Capture a coding idea in the ideas repo at `~/git/.ideas`. Read `~/git/.ideas/AGENTS.md` first and follow its Capture steps.

First get the exact text. Use the `ask` tool with a single `<textarea name="idea">`. If a draft appears between the `<draft>` tags below, prefill the textarea with it (HTML-escaped). omp's argument parsing collapses repeated spaces and strips some quotes from slash-command arguments, so the submitted textarea value is the only source of truth.

Write the submitted value to `idea.md` exactly as given, byte for byte. Don't fix typos, reformat, summarise or add headings. Don't explore the idea unless I ask.

<draft>
$ARGUMENTS
</draft>
