; lab4.asm
SECTION .data ; Начало секции данных
hello: DB 'Сабралиева Марворид',10 ; 'Сабралиева Марворид' плюс
; символ перевода строки
helloLen: EQU $-hello ; Длина строки lab4
SECTION .text ; Начало секции кода
GLOBAL _start
_start: ; Точка входа в программу
mov eax,4 ; Системный вызов для записи (sys_write)
mov ebx,1 ; Описатель файла '1' - стандартный вывод
mov ecx,hello ; Адрес строки lab4 в ecx
mov edx,helloLen ; Размер строки lab4
int 80h ; Вызов ядра
mov eax,1 ; Системный вызов для выхода (sys_exit)
mov ebx,0 ; Выход с кодом возврата '0' (без ошибок)
int 80h ; Вызов ядра
