#include "LightScheduler.h"
#include "LightControllerSpy.h"

void LightScheduler_ScheduleTurnOn(int id,Day day, int minuteOfDay)
{
    scheduledEvent.id = id;
    scheduledEvent.minutefDay = minuteOfDay;
}
void LightScheduler_Wakeup(void)
{
    Time time;
    TimeService_GetTime(&time);

    if(scheduledEvent.id==UNUSED)
        return;
    if(time.minuteOfDay!=scheduledEvent.minuteOfDay)
        return;

    LightController_On(scheduledEvent.id);
}
void LightScheduler_Create(void)
{
    scheduledEvent.id = UNUSED;
}
void LightScheduler_ScheduleTurnOn(int id,Day day, int minuteOfDay)
{
  scheduledEvent.minuteOfDay = minuteOfDay;
  scheduledEvent.event = TURN_ON;
  scheduledEvent.id = id;
}
void LightScheduler_ScheduleTurnOff(int id,Day day, int minuteOfDay)
{
  scheduledEvent.minuteOfDay = minuteOfDay;
  scheduledEvent.event = TURN_OFF;
  scheduledEvent.id = id;
}
void LightScheduler_Wakeup(void)
{
  Time time;
  TimeService_GetTime(&time);
  if (scheduledEvent.id==UNUSED)
    return;
  if(time.minuteOfDay!= scheduledEvent.minutefDay)
    return;
  LightController_On(scheduledEvent.id);
  
  if(scheduledEvent.event ==TURN_ON)
    LightController_On(scheduledEvent.id);
  else (scheduledEvent.evet ==TURN_OFF)
    LightController_Off(scheduledEvent.id);
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