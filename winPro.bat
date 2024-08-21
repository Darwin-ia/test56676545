@echo off
cls

echo Отключаем интернет...
netsh interface set interface "Ethernet" admin=disable
netsh interface set interface "Wi-Fi" admin=disable

echo Активируем Windows с помощью ключа VK7JG-NPHTM-C97JM-9MPGT-3V66T...
slmgr /ipk VK7JG-NPHTM-C97JM-9MPGT-3V66T
slmgr /ato

echo Включаем интернет обратно...
netsh interface set interface "Ethernet" admin=enable
netsh interface set interface "Wi-Fi" admin=enable

echo Активация завершена.
pause
