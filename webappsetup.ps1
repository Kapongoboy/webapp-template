Write-Host "Welcome to plamed's web app setup"
$projectname= Read-Host -Prompt "Please enter your project name"
Write-Host "Setting up a typescript nextjs app with tailwind, daisyui and supabase"
npx create-next-app@latest $projectname --typescript --eslint
Set-Location .\$projectname
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
Copy-Item "C:\repos\pltools\tailwind.config.js" .\
Copy-Item "C:\repos\pltools\globals.css" .\src\styles\
Write-Host "Don't forget to add "
npm run dev
