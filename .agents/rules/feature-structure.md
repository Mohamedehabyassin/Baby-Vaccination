---
trigger: always_on
---

Preferred feature structure:
- features/<feature>/presentation/
- features/<feature>/domain/
- features/<feature>/data/

presentation:
- screens/
- widgets/
- bloc/

domain:
- entities/
- repositories/
- usecases/

data:
- models/
- datasources/
- repositories/
- mappers/