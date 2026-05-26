# ROHAN — Your Exact Commits for Assessment 4
# You own: views.py, urls.py, settings.py, core/urls.py,
#          tests/test_views.py, manage.py, deployment files
# WAIT: until Samir's models are merged before writing views

git config --global user.name "Rohan"
git config --global user.email "YOUR_GITHUB_EMAIL"

# ── BRANCH 1: Setup and config ────────────────────────────────────────────────
git pull origin main
git checkout -b feature/rohan-a4-setup

git add core/settings.py core/urls.py core/wsgi.py manage.py requirements.txt
git commit -m "chore(rohan): update core config and settings for Assessment 4"
git push origin feature/rohan-a4-setup

# PR: feature/rohan-a4-setup → main | Ask SAKAR to review → merge

# ── BRANCH 2: Views (after Samir's models are merged) ────────────────────────
git pull origin main
git checkout -b feature/rohan-views

git add cases/views.py
git commit -m "feat(rohan): add DashboardView and YoungPerson CBVs with select_related (ADR-004)"
git push origin feature/rohan-views

git add cases/views.py
git commit -m "feat(rohan): add Case CBVs with Q object OR search and status/risk filters"
git push origin feature/rohan-views

git add cases/views.py
git commit -m "feat(rohan): add Program views with conditional annotate and Caseworker with distinct"
git push origin feature/rohan-views

git add cases/views.py
git commit -m "feat(rohan): update views to call CaseService — views now thin coordinators (ADR-007)"
git push origin feature/rohan-views

git add cases/urls.py
git commit -m "feat(rohan): configure URL routes for all Assessment 4 endpoints"
git push origin feature/rohan-views

# PR: feature/rohan-views → main | Ask SAKAR to review → merge

# ── BRANCH 3: View tests and deployment ──────────────────────────────────────
git pull origin main
git checkout -b feature/rohan-tests

git add cases/tests/test_views.py
git commit -m "test(rohan): add test_views.py — permission boundaries and HTTP behaviour (ADR-008)"
git push origin feature/rohan-tests

git add Procfile railway.json .gitignore
git commit -m "feat(rohan): add Railway deployment config and .gitignore"
git push origin feature/rohan-tests

# PR: feature/rohan-tests → main | Ask SAMIR to review → merge
