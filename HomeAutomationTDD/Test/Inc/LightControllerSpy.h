#include <stdint.h>
#include "TestFixture.h"

static int16_t lastID,lastState;



#define LIGHT_ID_UNKNOWN  -1
#define LIGHT_STATE_UNKNOWN -1
#define LIGHT_ON 1 
#define LIGHT_OFF 0



void LightController_Create(void);
void LightController_Destroy(void);
void LightController_On(int16_t id );
void LightController_Off(int16_t id);
int16_t LightControllerSpy_GetLastID(void);
int16_t LightControllerSpy_GetLastState(void);



