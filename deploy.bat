@echo off
echo ===============================
echo 1. Backend Build
echo ===============================
cd backend
call npm run build

echo ===============================
echo 2. Frontend Build
echo ===============================
cd ..
cd frontend
call npm run build

echo ===============================
echo 3. Standalone kopyalamalari
echo ===============================
echo Public klasoru kopyalaniyor...
xcopy /E /I /Y public .next\standalone\public >nul
echo Static klasoru kopyalaniyor...
xcopy /E /I /Y .next\static .next\standalone\.next\static >nul

echo ===============================
echo KURULUM TAMAMLANDI!
echo ===============================
echo Sunucuda projeyi ayaga kaldirmak icin su komutu calistirin:
echo pm2 start ecosystem.config.js
cd ..
