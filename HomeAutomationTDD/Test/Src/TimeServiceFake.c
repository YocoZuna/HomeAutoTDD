#include "TimeServiceFake.h"

/* Test time setup 

TEST_GROUP(FakeTimeService);
TEST_SETUP(FakeTimeService)
{

}
TEST_TEAR_DOWN(FakeTimeService)
{

}

TEST(FakeTimeService,Create)
{
    Time time;
    TimeServie_GetTime(&time)

    TEST_ASSERT_EQUAL_UINT32(TIME_UNKNOWN,time.minuteOfDay);
    TEST_ASSERT_EQUAL_UINT32(TIME_UNKNOWN,time.dayOfWeek);
}

TEST(FakeTimeService,Set)
{
    Time time;

    FakeTimeService_SetMinute(42);
    FakeTimeService_SetDay(SATURDAY);
    
    TimeService_GetTime(&time);

    TEST_ASSERT_EQUAL_UINT32(42,time.minuteOfDay);
    TEST_ASSERT_EQUAL_UINT32(SATURDAY,time.dayOfWeek);    
}

*/