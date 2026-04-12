---
trigger: always_on
---

You are working on a Flutter codebase that uses:
- BLoC for state management
- Clean Architecture
- Firebase
- GoRouter for navigation
- Hive for local storage

Your job is to make safe, minimal, production-ready changes that fit the existing architecture.

General principles
- Prefer the smallest correct change over broad refactoring.
- Preserve existing architecture and folder structure.
- Follow null-safe Dart and Flutter best practices.
- Do not introduce new packages unless absolutely necessary.
- Do not modify unrelated files.
- Keep code readable, testable, and consistent with the current codebase.

Project architecture rules
- Respect Clean Architecture boundaries at all times.
- Keep presentation, domain, and data layers separate.
- Never place business logic in widgets.
- Never access Firebase, Hive, or network clients directly from the UI layer.
- UI may talk to BLoC only.
- BLoC may depend on domain use cases only.
- Use cases may depend on repositories only.
- Repositories coordinate data sources and map models to domain entities.
- Data sources handle Firebase and Hive implementation details.

Layer responsibilities

Presentation layer
- Contains pages, widgets, BLoCs, events, and states.
- Widgets should be focused on rendering and user interaction.
- BLoCs should contain presentation logic only, not raw Firebase or Hive calls.
- Keep event and state classes explicit and easy to understand.
- Handle loading, success, empty, and error states clearly.
- Avoid large widget build methods; extract subwidgets when needed.

Domain layer
- Contains entities, repositories interfaces, and use cases.
- Domain layer must stay framework-agnostic.
- Do not import Firebase, Hive, or Flutter packages into the domain layer.
- Use cases should represent one clear action or business operation.
- Entities should be clean, stable, and not tied to DTO/model structure.

Data layer
- Contains repository implementations, models, mappers, and data sources.
- Remote data sources handle Firebase Auth, Firestore, Realtime Database, Storage, Functions, or Messaging as already used in the repo.
- Local data sources handle Hive boxes, caching, and persistence.
- Repository implementations merge remote and local sources as needed.
- Convert external models into domain entities before returning to domain/presentation.

BLoC rules
- Use BLoC/Cubit patterns already present in the repo.
- Keep BLoCs focused on one feature or screen flow.
- Do not make a single BLoC responsible for unrelated features.
- Events should describe user/system actions.
- States should describe UI states, not implementation details.
- Prefer immutable states.
- Use equatable if the repo already uses it.
- Avoid emitting too many transient states unless necessary.
- Handle failures explicitly and surface user-friendly errors.

Clean Architecture rules
- Before adding code, inspect the existing feature structure and mirror it.
- New features should follow the same folder conventions already in use.
- Prefer one use case per action, especially for non-trivial business logic.
- Keep mapping logic centralized and reusable.
- Do not bypass repository interfaces.
- Do not leak data models into presentation.

Firebase rules
- Use the existing Firebase services and configuration already in the project.
- Do not duplicate Firebase initialization.
- Keep Firebase-specific code inside data sources or infrastructure helpers.
- Handle Firebase exceptions explicitly.
- Map Firebase errors into domain/app failures before exposing them upward.
- Validate auth state, null users, permissions, and missing documents safely.
- For Firestore:
  - use typed model conversion patterns already present in the repo
  - avoid scattered collection name strings if centralized constants/helpers exist
  - prefer safe parsing with defaults only when business-safe
- For Firebase Auth:
  - handle unauthenticated and expired-session cases explicitly
  - never assume currentUser is non-null
- For Firebase Storage:
  - validate upload paths and metadata when applicable
- Never expose sensitive config, secrets, tokens, or admin behavior in client code.

GoRouter rules
- Follow the existing navigation structure and route registration style.
- Use GoRouter consistently; do not mix navigation styles unless already established.
- Add new routes in the central routing setup.
- Prefer named routes if the project already uses them.
- Keep route paths, names, and argument handling consistent.
- Pass typed parameters or structured extras where possible.
- Preserve redirect logic and auth guards.
- Do not break deep links or nested navigation.
- When changing navigation, consider back behavior and browser history for web.

Hive rules
- Use Hive only through the project’s local data source or repository pattern.
- Do not access Hive directly from widgets or BLoCs.
- Reuse existing box names, adapters, and initialization patterns.
- If a new box or adapter is required, register it in the existing startup flow.
- Keep Hive models and persistence details in the data layer.
- Be careful with schema evolution and backwards compatibility.
- Do not silently delete cached user data unless explicitly required.
- Use Hive for caching, lightweight persistence, and offline-friendly flows according to current project conventions.

Error handling rules
- Never swallow exceptions silently.
- Convert technical errors into typed failures or app-level exceptions.
- Return meaningful failure states to the UI.
- Log errors only through the project’s existing logging approach.
- Avoid generic catch blocks unless they rethrow or map errors intentionally.

UI and widget rules
- Follow the existing design system, theme, spacing, and typography.
- Prefer small reusable widgets over repeated UI blocks.
- Use const constructors wherever possible.
- Keep widgets accessible and responsive.
- Avoid expensive work in build().
- Avoid deeply nested widget trees when extraction improves readability.

Performance rules
- Minimize unnecessary rebuilds.
- Use BlocBuilder, BlocSelector, or equivalents appropriately.
- Scope rebuilds to the smallest useful subtree.
- Avoid loading large datasets eagerly when pagination/lazy loading exists.
- Cache carefully and invalidate deliberately.
- Be careful with stream subscriptions and controller disposal.

Testing rules
- Add or update tests for every non-trivial logic change.
- Prefer unit tests for use cases, repositories, and BLoCs.
- Add widget tests for important UI state behavior.
- Mock Firebase and Hive boundaries instead of hitting real services in tests unless the repo already uses integration tests for that purpose.
- Do not update tests to match incorrect behavior unless behavior changes intentionally.

Code generation and maintenance
- Respect existing generated-file conventions.
- Do not manually edit generated files.
- If codegen is used, mention the exact command required.
- Keep imports clean and avoid unused code.
- Keep analyzer warnings at zero when possible.

When implementing a new feature
1. Inspect the current feature structure and copy its pattern.
2. Add/update domain entity, repository contract, and use case if needed.
3. Implement or extend repository in data layer.
4. Add/update remote/local data source logic.
5. Wire behavior into BLoC/Cubit.
6. Update UI with clear state handling.
7. Add navigation route if needed through GoRouter.
8. Add/update tests.

When fixing a bug
- Find the narrowest layer where the fix belongs.
- Fix root cause, not just UI symptoms.
- Avoid architecture violations for quick patches.
- Preserve public behavior unless the bug requires change.
- Mention any migration or data implications.

Output expectations
- Briefly explain the plan before making broad multi-file changes.
- After changes, list the files changed.
- Summarize what was changed and why.
- Note assumptions, risks, and follow-up items.
- Provide commands to run:
  - flutter pub get
  - dart format .
  - flutter analyze
  - flutter test

Do not
- Do not call Firebase directly from presentation code.
- Do not read or write Hive directly from widgets or BLoCs.
- Do not put routing logic all over the app.
- Do not bypass use cases for convenience.
- Do not mix entities, models, and UI DTOs carelessly.
- Do not refactor unrelated files.
- Do not invent missing APIs, documents, collections, or box structures without stating it.
- Do not introduce breaking architecture changes unless explicitly requested.