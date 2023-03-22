
#include "STD_TYPES.h"
#include  "BIT_MATH.h"

#include "DIO_int.h"
#include <avr/io.h>
#include "FreeRTOS.h"
#include "task.h"
#include "FreeRTOSConfig.h"



/* Define Tasks Priorities */
#define  LedOn_PRIORITY (2)

/*tasks codes prototypes */
 void LedIntro_code( void* pvParamter);


 /*Create Task Handles Create */
 xTaskHandle Task1Hand = NULL;


 int main(void)
{
	/*initialize DIO*/
	M_DIO_void_setPinDir(PORTA_ID,PIN0, OUT);
	/*Create tasks*/
	xTaskCreate(LedIntro_code,(const signed char *)"Task1",85,NULL,LedOn_PRIORITY,&Task1Hand);

	/*start Scheduler */
	vTaskStartScheduler();

	/*Never Enter Here */
	return 0;
}

/*Task1 Code */
 void LedIntro_code(void*pvParamter)
{
	for (;;)
	{

		/*Toggle Led */
		M_DIO_void_setPinValue(PORTA_ID,PIN0, HIGH);

		/*Send Task in Blocked Queue for 2000 Ticks */
		vTaskDelay(500);

		/*Toggle Led */
		M_DIO_void_setPinValue(PORTA_ID,PIN0, LOW);

		/*Send Task in Blocked Queue for 2000 Ticks */
		vTaskDelay(500);
	}
}
