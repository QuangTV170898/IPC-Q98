#ifndef __APP_STATUS_H__
#define __APP_STATUS_H__

#ifdef __cplusplus
extern "C"
{
#endif

    typedef enum IPC_AppStatus_
    {
        IPC_RETCODE_TRUE,
        IPC_RETCODE_FAILED = -1
    } IPC_AppStatus_e;

    

#ifdef __cplusplus
}

#endif
#endif