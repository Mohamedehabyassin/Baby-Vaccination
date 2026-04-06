# Baby Vaccination




## Getting Started


## Feature Structure

lib/features/
├── [feature_name]/
│   ├── data/
│   │   ├── data_sources/
│   │   ├── local_data_sources/
│   │   ├── remote_data_sources/
│   │   ├── models/
│   │   └── repository/
│   ├── domain/
│   │   ├── entities/
│   │   ├── repository/
│   │   └── use_cases/
│   └── presentation/
│       ├── bloc/
│       └── screen/
│       └── widgets/


# dart run build_runner build

# dart run build_runner build --delete-conflicting-outputs

# flutter gen-l10n