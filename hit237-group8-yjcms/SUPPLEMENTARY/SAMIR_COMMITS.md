# SAMIR — Your Exact Commits for Assessment 4
# You own: models.py, admin.py, services/case_service.py,
#          tests/test_models.py, tests/test_services.py, ERD_v2.md
# WAIT: until Sakar commits ADR-007 before writing services
# WAIT: until Sakar commits ADR-008 before writing tests

git config --global user.name "Samir"
git config --global user.email "YOUR_GITHUB_EMAIL"

# ── BRANCH 1: Models and services ────────────────────────────────────────────
git pull origin main
git checkout -b feature/samir-models-services

git add SUPPLEMENTARY/ERD_v2.md
git commit -m "docs(samir): add ERD v2 showing Assessment 4 YoungPerson field changes"
git push origin feature/samir-models-services

git add cases/models.py
git commit -m "feat(samir): add email, education_status, is_minor, structured address to YoungPerson"
git push origin feature/samir-models-services

git add cases/models.py
git commit -m "feat(samir): add CaseAlreadyClosedError, ProgramFullError, DuplicateEnrolmentError (ADR-007)"
git push origin feature/samir-models-services

git add cases/models.py
git commit -m "feat(samir): add Case.clean() model-level validation for closed_date"
git push origin feature/samir-models-services

git add cases/services/case_service.py
git commit -m "feat(samir): implement CaseService with transaction.atomic enrolment (ADR-007)"
git push origin feature/samir-models-services

git add cases/services/case_service.py
git commit -m "feat(samir): add YoungPersonService with register_client and active clients methods"
git push origin feature/samir-models-services

git add cases/admin.py
git commit -m "feat(samir): update admin to show new Assessment 4 YoungPerson fields"
git push origin feature/samir-models-services

# PR: feature/samir-models-services → main | Ask ROHAN to review → merge

# ── BRANCH 2: Tests (after Sakar commits ADR-008) ────────────────────────────
git pull origin main
git checkout -b feature/samir-tests

git add cases/tests/test_models.py
git commit -m "test(samir): add test_models.py — age, is_minor, capacity, constraints (ADR-008)"
git push origin feature/samir-tests

git add cases/tests/test_services.py
git commit -m "test(samir): add test_services.py — all domain exceptions and happy paths (ADR-008)"
git push origin feature/samir-tests

# PR: feature/samir-tests → main | Ask ROHAN to review → merge
