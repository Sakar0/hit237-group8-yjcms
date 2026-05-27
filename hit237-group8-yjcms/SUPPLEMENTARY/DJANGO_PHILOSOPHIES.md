# Django Philosophies Evidence

This document records how the project applies Django philosophies in Assessment 4.
It is intended to support marker evidence for architectural decisions.

## Key Django Philosophies

### Explicit is better than implicit
- Explicit through models for `CaseOffence` and `Enrolment` instead of implicit `ManyToManyField`.
- Explicit service layer in `cases/services/` isolating domain logic from request handling.
- Query optimisation decisions are explicit: `select_related`, `prefetch_related`, conditional `annotate`.
- Settings and auth routes are declared explicitly in `core/settings.py` and `core/urls.py`.

### Don’t repeat yourself (DRY)
- Reusable generic class-based views (`ListView`, `DetailView`, etc.) reduce duplicate view logic.
- Template inheritance avoids repeating common layout and navigation markup.
- Service layer centralises business rules instead of duplicating them across views.

### Loose coupling
- `accounts` and `cases` apps separate authentication/domain concerns.
- `Caseworker` uses a `OneToOneField` to Django `User`, keeping auth and profile data separate.
- The service layer keeps business logic decoupled from HTTP and template code.

### Don’t reinvent the wheel
- Uses Django built-in authentication and `django.contrib.auth.urls`.
- Uses Django generic class-based views and ORM features rather than custom request handling.
- Uses Django testing patterns: model tests, service tests, view tests, and isolated query assertions.

## Assessment 4-specific evidence

- `ADR-008` documented a testing strategy before test files were written.
- `ADR-007` introduced a service layer to make domain logic testable and maintainable.
- `ADR-004` extended the QuerySet optimisation strategy with conditional `Count(..., filter=Q(...))` and `distinct=True`.
- `select_related()` is used only for ForeignKey / OneToOne traversals; `prefetch_related()` is used for M2M and reverse relations.

## Repository references

- `ADR.md` — documents the architectural decisions and the Django philosophy rationale.
- `cases/services/` — contains domain orchestration code aligned with Django's explicit and reusable patterns.
- `cases/views.py` — uses generic views and query optimisation, following DRY and explicit design.
- `core/urls.py` and `core/settings.py` — demonstrate Django's built-in auth and explicit configuration.
