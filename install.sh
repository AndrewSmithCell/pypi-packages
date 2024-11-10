mkdir -p downloaded
cd downloaded
cat requirements.txt | xargs -n 1 pip download --platform manylinux1_x86_64 --platform win32 --only-binary=:all:
cd ..
python pypi-registry.py
git config user.name github-actions
git config user.email github-actions@github.com
git add .
git commit -m "AUTO updated"
git push --force
