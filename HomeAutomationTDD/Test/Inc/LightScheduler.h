#include "TestFixture.h"

typedef struct
{
    int id;
    int minutefDay;

}ScheduledLightEvent;

enum Day {
    NONE = -1,EVERYDAY=10,WEEKDAY,WEEKEND,SUNDAY=1,MONDAY,TUESDAY,WEDENSDAY,THURSDAY,FRIDAY,SATURDAY};

typedef enum Day Day;

static ScheduledLightEvent scheduledEvent;
void LightScheduler_ScheduleTurnOn(int id,Day day, int minuteOfDay);
void LightScheduler_ScheduleTurnOff(int id,Day day, int minuteOfDay);
void LightScheduler_Wakeup(void);

void LightScheduler_Create(void);




