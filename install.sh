mkdir -p downloaded
cd downloaded
cat ../requirements/requirements1.txt | xargs -n 1 pip download --extra-index-url https://wheels.myhloli.com
cd ..
python pypi-registry.py
git config user.name github-actions
git config user.email github-actions@github.com
git add .
git commit -m "AUTO updated"
git push --force
