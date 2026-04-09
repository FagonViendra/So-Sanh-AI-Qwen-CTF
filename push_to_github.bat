@echo off
chcp 65001 >nul
echo ----------------------------------------------------
echo DANG DAY DU AN LEN GITHUB: SO SANH AI CTF
echo ----------------------------------------------------

:: Khoi tao git
git init
git add .
git commit -m "feat: Ban giao do an thu nghiem Qwen3.5-9B vs NYU CTF"
git branch -M main

:: Kiem tra neu da co remote origin chua (de danh neu chay lai)
git remote -v >nul 2>&1
if "%ERRORLEVEL%"=="0" (
    echo Repo github da ton tai tren may chung ta, chuan bi day...
) else (
    echo Tao moi Repo tren Github ten So-Sanh-AI-Qwen-CTF...
    gh repo create So-Sanh-AI-Qwen-CTF --public --source=. --remote=origin
)

:: Day ma doc len Github
git push -u origin main

echo ----------------------------------------------------
echo THANH CONG! Check thu Github la thay ban!
echo ----------------------------------------------------
pause
