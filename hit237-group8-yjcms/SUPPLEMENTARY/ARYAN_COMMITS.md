# ARYAN — Your Exact Commits for Assessment 4
# You own: ALL HTML templates in cases/templates/, CLASS_DIAGRAM_v2.md
# WAIT: until Rohan merges views before starting templates
# Your key A4 job: update youngperson_detail.html to show new fields

git config --global user.name "Aryan"
git config --global user.email "YOUR_GITHUB_EMAIL"

git pull origin main
git checkout -b feature/aryan-templates-a4

# Copy base.html from A2 — add one HTML comment at top as minor update
git add cases/templates/cases/base.html
git commit -m "feat(aryan): carry forward base template with minor accessibility comment"
git push origin feature/aryan-templates-a4

git add cases/templates/registration/login.html
git commit -m "feat(aryan): carry forward login template from Assessment 2"
git push origin feature/aryan-templates-a4

git add cases/templates/cases/dashboard.html
git commit -m "feat(aryan): carry forward dashboard template from Assessment 2"
git push origin feature/aryan-templates-a4

# KEY A4 CHANGE — update youngperson_detail.html to show new fields:
# Add to personal details section:
#
# <p><strong>Education:</strong> {{ client.get_education_status_display }}</p>
# <p><strong>Address:</strong> {{ client.full_address|default:"Not provided" }}</p>
# <p><strong>Email:</strong> {{ client.email|default:"Not provided" }}</p>
# {% if client.is_minor %}
# <span class="badge badge-high">Minor — guardian consent required</span>
# {% endif %}
# {% if client.interpreter_required %}
# <span class="badge badge-pending">Interpreter required</span>
# {% endif %}
git add cases/templates/cases/youngperson_detail.html
git commit -m "feat(aryan): update client detail to show is_minor, education_status, full_address (A4)"
git push origin feature/aryan-templates-a4

# Update youngperson_list.html — add education_status column to table
git add cases/templates/cases/youngperson_list.html
git commit -m "feat(aryan): update client list to show education_status column"
git push origin feature/aryan-templates-a4

git add cases/templates/cases/form.html
git commit -m "feat(aryan): carry forward generic form template from Assessment 2"
git push origin feature/aryan-templates-a4

git add cases/templates/cases/case_list.html cases/templates/cases/case_detail.html
git add cases/templates/cases/program_list.html cases/templates/cases/program_detail.html
git add cases/templates/cases/caseworker_list.html
git commit -m "feat(aryan): carry forward remaining page templates from Assessment 2"
git push origin feature/aryan-templates-a4

git add SUPPLEMENTARY/CLASS_DIAGRAM_v2.md
git commit -m "docs(aryan): add class diagram v2 showing service layer and OO design"
git push origin feature/aryan-templates-a4

# PR: feature/aryan-templates-a4 → main | Ask SAMIR to review → merge
