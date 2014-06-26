#ifndef __LOG_H
#define __LOG_H

#include <stdio.h>

#if __cplusplus
extern "C" {
#endif

#define LOG_OUT_SYSLOG
//#define LOG_OUT_FPRINTF

#ifdef LOG_OUT_SYSLOG
#include <syslog.h>

/*
#define ALOG(level,format, ...) \
do { \
syslog(level, format); \
} while(0)
#define ALOGD(format, ...)      ALOG(LOG_DEBUG,"%s,%d -- " format "\n", __FUNCTION__, __LINE__, ##__VA_ARGS__)

*/

#define ALOG(level,format, ...) \
        do { \
		syslog(level, "%s,%d -- " format "\n", __FUNCTION__, __LINE__, ##__VA_ARGS__); \
	} while(0)

#define ALOGD(format, ...)	ALOG(LOG_DEBUG, format, ##__VA_ARGS__)
#define ALOGV(format, ...)	ALOG(LOG_NOTICE, format, ##__VA_ARGS__)
#define ALOGI(format, ...)	ALOG(LOG_INFO, format, ##__VA_ARGS__)
#define ALOGE(format, ...)	ALOG(LOG_ERR, format, ##__VA_ARGS__)
#define ALOGW(format, ...)	ALOG(LOG_WARNING, format, ##__VA_ARGS__)
#define ALOGF(format, ...)	ALOG(LOG_ALERT, format, ##__VA_ARGS__)

#else
#ifdef LOG_OUT_FPRINTF
#define ALOGD(format, ...) \
	do { \
		fprintf(stderr, "%s,%d -- " format "\n", \
				__FUNCTION__, __LINE__, ##__VA_ARGS__); \
	} while(0)
#else
#define ALOGD
#endif


#define ALOGV	ALOGD
#define ALOGI	ALOGD
#define ALOGE	ALOGD
#define ALOGW	ALOGD
#define ALOGF	ALOGD
#endif


#if __cplusplus
};
#endif

#endif
