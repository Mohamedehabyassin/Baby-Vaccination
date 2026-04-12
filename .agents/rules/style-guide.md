---
trigger: always_on
---

Theme, localization, and custom widget rules

Theme rules
- Never hardcode colors, text styles, font sizes, spacing, border radius, or shadows in feature code unless the project already does so in a clearly established pattern.
- Always use the app theme, theme extensions, design tokens, or shared style constants already defined in the codebase.
- Access styling through Theme.of(context), context extensions, or project-specific theme helpers already used in the repo.
- Prefer semantic theme values over raw values. Example: use colorScheme.primary instead of a literal color.
- Keep light and dark mode compatibility intact.
- Any new UI must work correctly with the existing theme setup.
- Do not create one-off styling systems inside a feature.
- If a new reusable style token is needed, add it in the shared theme layer, not inside a page or widget.
- Reuse existing spacing, typography, button, input, card, and dialog patterns before creating new ones.

Localization rules
- Never hardcode user-facing strings in widgets, BLoCs, dialogs, snackbars, validators, empty states, or error states.
- Always use the existing localization system in the project, such as AppLocalizations, S, generated l10n files, or the repo’s current pattern.
- Any new visible string must be added to localization resources.
- Use localized strings for button labels, form hints, placeholders, validation messages, titles, subtitles, tooltips, and error messages.
- Preserve localization key naming conventions already used in the codebase.
- Do not bypass localization for “small” text.
- Support text expansion and avoid layouts that break with longer translations.
- Respect text direction and RTL behavior where applicable.
- Keep date, time, number, and currency formatting consistent with the project’s localization approach.
- Do not embed concatenated sentence fragments when a full localized phrase is safer and more natural.

Custom widget rules
- Prefer existing shared widgets before creating new UI components.
- Before building a new widget, inspect the codebase for reusable buttons, text fields, dialogs, cards, loaders, app bars, list items, empty states, and form components.
- Use project custom widgets for consistency in styling, behavior, accessibility, and spacing.
- Do not replace shared widgets with raw Material widgets unless there is a clear reason.
- If a needed component does not exist, create a reusable custom widget in the shared/common layer if it is likely to be reused across features.
- Keep feature-specific widgets inside the feature unless they clearly belong in the shared widget library.
- Custom widgets should expose clean, minimal APIs and avoid mixing business logic into presentation components.
- Shared widgets must remain generic and not depend on feature-specific models or BLoCs.
- Reuse existing custom scaffold, button, input, modal, chip, tab, list tile, and state widgets where available.

UI consistency rules
- New screens and components must match existing app behavior and visual patterns.
- Use the same custom widgets for loading, error, and empty states that the app already uses.
- Use the same shared wrappers for padding, spacing, section headers, and screen layout when they exist.
- Keep accessibility behavior consistent across shared widgets.
- Do not introduce visually inconsistent controls or duplicated component variants without a strong reason.

Implementation checklist
- Check whether a shared/custom widget already exists before creating a new one.
- Check whether a localized string already exists before adding a new key.
- Check whether the theme already exposes the style token needed before introducing a new one.
- If adding a new theme token, localization key, or shared widget, place it in the proper shared layer and follow existing naming conventions.