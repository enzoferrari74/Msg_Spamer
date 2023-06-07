@echo off 

echo:       =============================================
echo:                   Code By enzoferrari74           
echo:       =============================================
echo:                        MSG Spamer                  
echo:       =============================================

::Déclaration des Variable avec l'activation du choix via le /p
set /p chiffre="Nombre de Message : "
set /p Message="Le Message que vous voulez envoyer : " 
set /p User="Votre Nom de session : "
set /p Hostname="Hostname du pc que tu spam : "

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
