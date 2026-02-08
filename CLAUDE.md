# CLAUDE.md

Spring Boot library wrapping Terraform/OpenTofu CLI for infrastructure provisioning.

## Stack
- Java
- Maven (multi-module project) & Gradle
- Spring Boot
- Terraform/OpenTofu CLI (external dependency)

## Build & Test
```bash
# Maven
mvn clean verify

# Gradle (preferred for this project)
./gradlew clean build

# Generate docs locally
mkdocs serve
```

## Notes
- Multi-module: terraform-client, autoconfigure, starter, samples
- Works with both `terraform` and `tofu` executables
- Provides `TerraformClient` for direct use or Spring autowiring
- Azure credentials configurable via application.properties
- Process wrapper for CLI invocation with async support
