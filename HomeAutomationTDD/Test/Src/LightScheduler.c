#include "LightScheduler.h"
#include "LightControllerSpy.h"

static void scheduleEvent(int id, Day day, int minuteOfDay, int event)
{
  scheduledEvent.minuteOfDay = minuteOfDay;
  scheduledEvent.event = event;
  scheduledEvent.id = id;
}

static void processEventDueNow(Time * time, ScheduledLightEvent *lightEvent)
{
  if (lightEvent->id ==UNUSED)
    return;
  if(lightEvent->minuteOfDay != time.minuteOfDay)
    return;
  operateLight(lightEvent);
}

static void operateLight(ScheduledLightEvent * lightEvent)
{
  if (lightEvent->event == TURN_ON)
    LightController_On(lightEvent->id);
  else if (lightEvent->event == TURN_OFF)
    LightController_Off(lightEvent->id);
}

void LightScheduler_Create(void)
{
    scheduledEvent.id = UNUSED;
}

void LightScheduler_ScheduleTurnOn(int id,Day day, int minuteOfDay)
{
  /*
  scheduledEvent.minuteOfDay = minuteOfDay;
  scheduledEvent.event = TURN_ON;
  scheduledEvent.id = id;
  */
  scheduleEvent(id,day,minuteOfDay,TURN_ON);
}

void LightScheduler_ScheduleTurnOff(int id,Day day, int minuteOfDay)
{
  /*
  scheduledEvent.minuteOfDay = minuteOfDay;
  scheduledEvent.event = TURN_OFF;
  scheduledEvent.id = id;
  */
  scheduleEvent(id,day,minuteOfDay,TURN_OFF);
}

void LightScheduler_Wakeup(void)
{
  Time time;
  TimeService_GetTime(&time);
  /*
  if (scheduledEvent.id==UNUSED)
    return;
  if(time.minuteOfDay!= scheduledEvent.minuteOfDay)
    return;
  LightController_On(scheduledEvent.id);
  
  if(scheduledEvent.event ==TURN_ON)
    LightController_On(scheduledEvent.id);
  else if(scheduledEvent.event ==TURN_OFF)
    LightController_Off(scheduledEvent.id);
  */
  processEventDueNow(&time,&scheduledEvent);
}


TEST_GROUP(LightScheduler);
TEST_SETUP(LightScheduler)
{
  LightController_Create();
  LightScheduler_Create();
}
TEST_TEAR_DOWN(LightScheduler)
{
  LightController_Destroy();
  LightScheduler_Destroy();
}

TEST(LightScheduler, NoScheduleNothingHappens)
{
    FakeTimeService_SetMinute(100);
    FakeTimeService_SetDay(MONDAY);

    LightScheduler_Wakeup();

    TEST_ASSERT_EQUAL_UINT32(LIGHT_ID_UNKNOWN,LightControllerSpy_GetLastID());
    TEST_ASSERT_EQUAL_UINT32(LIGHT_STATE_UNKNOWN,LightControllerSpy_GetLastState());
}

TEST(LightScheduler,ScheduleOnEveryDayNotTimeYet)
{
    LightScheduler_ScheduleTurnOn(3,EVERYDAY,1200);
    FakeTimeService_SetDay(MONDAY);
    FakeTimeService_SetMinute(1199);

    LightScheduler_Wakeup();

    TEST_ASSERT_EQUAL_UINT32(LIGHT_ID_UNKNOWN,LightControllerSpy_GetLastID());
    TEST_ASSERT_EQUAL_UINT32(LIGHT_STATE_UNKNOWN,LightControllerSpy_GetLastState());
}

TEST(LightScheduler,ScheduleOnEveryDayItsTime)
{
    LightScheduler_ScheduleTurnOn(3,EVERYDAY,1200);
    FakeTimeService_SetDay(MONDAY);
    FakeTimeService_SetMinute(1200);

    LightScheduler_Wakeup();

    TEST_ASSERT_EQUAL_UINT32(3,LightControllerSpy_GetLastID());
    TEST_ASSERT_EQUAL_UINT32(LIGHT_ON,LightControllerSpy_GetLastState());
}

TEST(LightScheduler,ScheduleOffEveryDayItsTime)
{
    LightScheduler_ScheduleTurnOff(3,EVERYDAY,1200);
    FakeTimeService_SetDay(MONDAY);
    FakeTimeService_SetMinute(1200);

    LightScheduler_Wakeup();

    TEST_ASSERT_EQUAL_UINT32(3,LightControllerSpy_GetLastID());
    TEST_ASSERT_EQUAL_UINT32(LIGHT_OFF,LightControllerSpy_GetLastState());
}

TEST(LightScheduller,ScheduleWeekEndItsMonday)
{
 LightScheduler_ScheduleTurnOn(3,WEEKEND,1200);
  setTimeTo(MONDAY,1200);
  LightScheduler_Wakeup();
  checkLightState(LIGHT_ID_UNKNOWN,LIGHT_ID_UNKNOWN);
  }