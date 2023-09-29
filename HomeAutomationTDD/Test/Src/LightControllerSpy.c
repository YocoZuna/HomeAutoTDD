#include "LightControllerSpy.h"


void LightController_Create(void)
{
    lastID = LIGHT_ID_UNKNOWN;
    lastState = LIGHT_STATE_UNKNOWN;
}

void LighController_Destroy(void)
{
    lastID = 0;
    lastState = LIGHT_STATE_UNKNOWN;
}

void LightController_On(int16_t id )
{
    lastID = id;
    lastState = LIGHT_ON;
}

void LightController_Off(int16_t id)
{
    lastID = id;
    lastState = LIGHT_OFF;
}

int16_t LightControllerSpy_GetLastID(void)
{
    return lastID;
}

int16_t LightControllerSpy_GetLastState(void)
{
    return lastState;
}

/* Test light  setup*/
TEST_GROUP(LightControllerSpy);
TEST_SETUP(LightControllerSpy)
{
   LightController_Create();
}
TEST_TEAR_DOWN(LightControllerSpy)
{
   LighController_Destroy();
}


/* Test light Controller*/
TEST(LightControllerSpy,Create)
{
    TEST_ASSERT_EQUAL_INT16(-1,LightControllerSpy_GetLastID());
    TEST_ASSERT_EQUAL_INT16(-1,LightControllerSpy_GetLastState());

}
TEST(LightControllerSpy,RememberTheLastLightIDControlled)
{
    LightController_On(10);
    TEST_ASSERT_EQUAL(10,LightControllerSpy_GetLastID());
    TEST_ASSERT_EQUAL(1,LightControllerSpy_GetLastState());
}
TEST_GROUP_RUNNER(LightControllerSpy)
{
    RUN_TEST_CASE(LightControllerSpy,Create);
    RUN_TEST_CASE(LightControllerSpy,RememberTheLastLightIDControlled);
}
