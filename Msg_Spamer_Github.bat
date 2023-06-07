@echo off 

echo:       =============================================
echo:                   Code By enzoferrari74           
echo:       =============================================
echo:                        MSG Spamer                  
echo:       =============================================

::Déclaration des Variable avec l'activation du choix via le /p
set /p chiffre="Number of messages : "
set /p Message="The message you want to send : " 
set /p User="The username you are on : "
set /p Hostname="Hostname of the PC you are spamming : "

::Déclaration de la boucle
:boucle 

set /a count = count + 1

echo %count%

::commande MSG 
msg %User% /SERVER:%Hostname% %Message%

if %count%==%chiffre% goto fin

goto boucle 

:fin

pause

:: Code By enzoferrari74 
:: https://github.com/enzoferrari74