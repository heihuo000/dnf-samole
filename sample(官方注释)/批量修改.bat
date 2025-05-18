@echo off
setlocal enabledelayedexpansion

:loop
    echo 1. ��ԭ�к�׺�������.txt
    echo 2. ɾ���ļ��ĺ�׺�����ų�.bat��.vbs��
    echo 3. �˳�
    set /p choice=��ѡ�����(1-3):

    if "!choice!"=="1" goto add_txt_suffix
    if "!choice!"=="2" goto remove_extension
    if "!choice!"=="3" goto end
    echo ��Ч��ѡ�����������룡
    pause
    goto loop

:add_txt_suffix
    set /p confirm=�Ƿ�ݹ��޸���Ŀ¼�е��ļ���(Y/N):
    if /i "!confirm!"=="Y" (
        goto add_txt_suffix_recursive
    ) else if /i "!confirm!"=="N" (
        goto add_txt_suffix_current
    ) else (
        echo ��Ч�����룬������Y��N��
        pause
        goto add_txt_suffix
    )

:add_txt_suffix_recursive
    echo ���ڵݹ��Ϊ�����ļ����ų�.bat��.vbs����ԭ�к�׺�������.txt...
    for /r %%f in (*) do (
        if /i not "%%~xf"==".bat" if /i not "%%~xf"==".vbs" (
            ren "%%f" "%%~nf%%~xf.md"
        )
    )
    echo ��������ɣ�
    pause
    goto loop

:add_txt_suffix_current
    echo ����Ϊ��ǰĿ¼�������ļ����ų�.bat��.vbs����ԭ�к�׺�������.txt...
    for %%f in (*.*) do (
        if /i not "%%~xf"==".bat" if /i not "%%~xf"==".vbs" (
            ren "%%f" "%%~nf%%~xf.md"
        )
    )
    echo ��������ɣ�
    pause
    goto loop

:remove_extension
    set /p confirm=�Ƿ�ݹ�ɾ����Ŀ¼���ļ��ĺ�׺����(Y/N):
    if /i "!confirm!"=="Y" (
        goto remove_extension_recursive
    ) else if /i "!confirm!"=="N" (
        goto remove_extension_current
    ) else (
        echo ��Ч�����룬������Y��N��
        pause
        goto remove_extension
    )

:remove_extension_recursive
    echo ���ڵݹ��ɾ����.bat�ͷ�.vbs�ļ��ĺ�׺��...
    for /r %%f in (*) do (
        if /i "%%~xf" neq ".bat" if /i "%%~xf" neq ".vbs" (
            set "filename=%%~nfp"
            ren "%%f" "!filename:~0,-1!"
        )
    )
    echo ��������ɣ�
    pause
    goto loop

:remove_extension_current
    echo ����ɾ����ǰĿ¼�·�.bat�ͷ�.vbs�ļ��ĺ�׺��...
    for %%f in (*.*) do (
        if /i "%%~xf" neq ".bat" if /i "%%~xf" neq ".vbs" (
            set "filename=%%~nfp"
            ren "%%f" "!filename:~0,-1!"
        )
    )
    echo ��������ɣ�
    pause
    goto loop

:end
endlocal