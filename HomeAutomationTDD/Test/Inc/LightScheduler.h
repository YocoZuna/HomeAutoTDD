#include "TestFixture.h"

#define TURN_OFF 0 
#define TURN_ON 1
#define UNUSED -1

typedef struct
{
    int id;
    int minuteOfDay;
    int event;
}ScheduledLightEvent;


enum Day {
    NONE = -1,EVERYDAY=10,WEEKDAY,WEEKEND,SUNDAY=1,MONDAY,TUESDAY,WEDENSDAY,THURSDAY,FRIDAY,SATURDAY};

typedef enum Day Day;

static ScheduledLightEvent scheduledEvent;
void LightScheduler_ScheduleTurnOn(int id,Day day, int minuteOfDay);
void LightScheduler_ScheduleTurnOff(int id,Day day, int minuteOfDay);
void LightScheduler_Wakeup(void);

void LightScheduler_Create(void);




