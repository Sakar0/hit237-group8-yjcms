# SAKAR — Your Exact Commits for Assessment 4
# You own: ADR.md, PROJECT_PLAN.md, SUPPLEMENTARY/DJANGO_PHILOSOPHIES.md
# RULE: ADR-007 MUST be committed BEFORE Samir writes services
# RULE: ADR-008 MUST be committed BEFORE Samir writes tests

git config --global user.name "Sakar"
git config --global user.email "YOUR_GITHUB_EMAIL"

# ── BRANCH 1 ──────────────────────────────────────────────────────────────────
git pull origin main
git checkout -b feature/sakar-adr-part1

git add PROJECT_PLAN.md
git commit -m "docs(sakar): update PROJECT_PLAN with Assessment 4 checkpoints and member roles"
git push origin feature/sakar-adr-part1

# Add only the ADR header + ADR-001 section to ADR.md
git add ADR.md
git commit -m "docs(sakar): initialise ADR.md and add ADR-001 through model decision"
git push origin feature/sakar-adr-part1

# Add ADR-007 section to ADR.md — BEFORE Samir writes services
git add ADR.md
git commit -m "docs(sakar): add ADR-007 service layer decision before implementation"
git push origin feature/sakar-adr-part1

# PR: feature/sakar-adr-part1 → main | Ask ARYAN to review → merge

# ── BRANCH 2 ──────────────────────────────────────────────────────────────────
git pull origin main
git checkout -b feature/sakar-adr-part2

# Add ADR-008 section — BEFORE Samir writes tests
git add ADR.md
git commit -m "docs(sakar): add ADR-008 testing strategy decision before test files written"
git push origin feature/sakar-adr-part2

# Add ADR-002 through ADR-006 (carried forward from A2)
git add ADR.md
git commit -m "docs(sakar): add ADR-002 through ADR-006 carried forward from Assessment 2"
git push origin feature/sakar-adr-part2

# Update ADR-004 with Assessment 4 QuerySet justification
git add ADR.md
git commit -m "docs(sakar): update ADR-004 with select_related vs prefetch_related justification"
git push origin feature/sakar-adr-part2

# Add ADR status summary table and design evolution narrative
git add ADR.md
git commit -m "docs(sakar): finalise ADR — add evolution narrative and status summary table"
git push origin feature/sakar-adr-part2

git add SUPPLEMENTARY/DJANGO_PHILOSOPHIES.md
git commit -m "docs(sakar): add Django philosophies evidence document for Assessment 4"
git push origin feature/sakar-adr-part2

# PR: feature/sakar-adr-part2 → main | Ask SAMIR to review → merge
