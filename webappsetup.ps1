. $PSScriptRoot\pl_web_logo.exe
Write-Host "Welcome to plamed's web app setup" -ForegroundColor DarkGreen 
$projectname= Read-Host -Prompt "Please enter your project name"
Write-Host "Setting up a typescript nextjs app with tailwind, daisyui,  and supabase" -ForegroundColor DarkCyan 

# nextjs bootstrap
npx create-next-app@latest $projectname --typescript --eslint

Set-Location .\$projectname

# install ui tools
Write-Host "Installing and setting daisyUI and Taiilwindcss"  -ForegroundColor DarkCyan 
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
npm i daisyui
Copy-Item $PSScriptRoot\tailwind.config.js .\
Copy-Item $PSScriptRoot\globals.css .\src\styles\

Write-Host "Don't forget to add your supabase api and anon key to your environment" -ForegroundColor DarkYellow 
# npm run dev
