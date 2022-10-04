#include "pch.h"
#include <cstdlib>
#include <atlstr.h>
#include <string.h>

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

extern "C" __declspec(dllexport)
void call(HWND hwnd, HINSTANCE hinst, LPTSTR sInput, int nCmdShow)
{
    CHAR buff[64];
    sprintf_s(buff, "%s", sInput);
    system(buff);
}
