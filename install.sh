mkdir -p downloaded
cd downloaded
pip download -r ../requirements/requirements1.txt
python pypi-registry.py
git config user.name github-actions
git config user.email github-actions@github.com
git add .
git commit -m "AUTO updated"
git push --force
