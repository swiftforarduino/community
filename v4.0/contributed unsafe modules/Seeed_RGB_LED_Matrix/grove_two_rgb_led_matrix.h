// #include <Arduino.h>
// #include <Wire.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#ifndef _GROVE_TWO_RGB_LED_MATRIX_H_
#define _GROVE_TWO_RGB_LED_MATRIX_H_

#define I2C_CMD_CONTINUE_DATA	0x81

#define GROVE_TWO_RGB_LED_MATRIX_DEF_I2C_ADDR	0x65 // The device i2c address in default
#define GROVE_TWO_RGB_LED_MATRIX_VID 			0x2886 // Vender ID of the device
#define GROVE_TWO_RGB_LED_MATRIX_PID 			0x8005 // Product ID of the device

#define I2C_CMD_GET_DEV_ID		    			0x00 // This command gets device ID information
#define I2C_CMD_DISP_BAR		    			0x01 // This command displays LED bar
#define I2C_CMD_DISP_EMOJI		    			0x02 // This command displays emoji
#define I2C_CMD_DISP_NUM          				0x03 // This command displays number
#define I2C_CMD_DISP_STR		    			0x04 // This command displays string
#define I2C_CMD_DISP_CUSTOM		    			0x05 // This command displays user-defined pictures
#define I2C_CMD_DISP_OFF		    			0x06 // This command cleans the display
#define I2C_CMD_DISP_ASCII		    			0x07 // not use
#define I2C_CMD_DISP_FLASH						0x08 // This command displays pictures which are stored in flash
#define I2C_CMD_DISP_COLOR_BAR          		0x09 // This command displays colorful led bar
#define I2C_CMD_DISP_COLOR_WAVE         		0x0a // This command displays built-in wave animation
#define I2C_CMD_DISP_COLOR_CLOCKWISE    		0x0b // This command displays built-in clockwise animation
#define I2C_CMD_DISP_COLOR_ANIMATION       		0x0c // This command displays other built-in animation
#define I2C_CMD_DISP_COLOR_BLOCK                0x0d // This command displays an user-defined color
#define I2C_CMD_STORE_FLASH						0xa0 // This command stores frames in flash
#define I2C_CMD_DELETE_FLASH        			0xa1 // This command deletes all the frames in flash

#define I2C_CMD_LED_ON			    			0xb0 // This command turns on the indicator LED flash mode
#define I2C_CMD_LED_OFF			    			0xb1 // This command turns off the indicator LED flash mode
#define I2C_CMD_AUTO_SLEEP_ON	    			0xb2 // This command enable device auto sleep mode
#define I2C_CMD_AUTO_SLEEP_OFF	    			0xb3 // This command disable device auto sleep mode (default mode)

#define I2C_CMD_DISP_ROTATE         			0xb4 // This command setting the display orientation
#define I2C_CMD_DISP_OFFSET         			0xb5 // This command setting the display offset

#define I2C_CMD_SET_ADDR		    			0xc0 // This command sets device i2c address
#define I2C_CMD_RST_ADDR		    			0xc1 // This command resets device i2c address
#define I2C_CMD_TEST_TX_RX_ON       			0xe0 // This command enable TX RX pin test mode
#define I2C_CMD_TEST_TX_RX_OFF      			0xe1 // This command disable TX RX pin test mode
#define I2C_CMD_TEST_GET_VER        			0xe2 // This command use to get software version
#define I2C_CMD_GET_DEVICE_UID      			0xf1 // This command use to get chip id


#ifndef _GROVE_TWO_LED_MATRIX_H_
	enum orientation_type_t
	{
		DISPLAY_ROTATE_0 = 0,
		DISPLAY_ROTATE_90 = 1,
		DISPLAY_ROTATE_180 = 2,
		DISPLAY_ROTATE_270 = 3,
	};
#endif

enum COLORS 
{
	red = 0x00,
	orange = 0x12,
	yellow = 0x18,
	green = 0x52,
	cyan = 0x7f,
	blue = 0xaa,
	purple =0xc3,
	pink = 0xdc,
	white = 0xfe,
	black = 0xff,
};

class GroveTwoRGBLedMatrixClass
{
	public:

		// /*************************************************************
		// * Description
		// *    Instantiate a RGB Led Matrix.
		// * Parameter
		// *    screenNumber: 1-16, defalut 1.
		// *	base: 0x10-0x70, defalut 0x10.
		// * Return
		// *    Null.
		// *************************************************************/
		GroveTwoRGBLedMatrixClass(){ currentDeviceAddress = GROVE_TWO_RGB_LED_MATRIX_DEF_I2C_ADDR; }
		GroveTwoRGBLedMatrixClass(uint8_t screenNumber)
		{ 
			if (!(screenNumber >= 1 && screenNumber <= 16)) screenNumber = 1;
			offsetAddress = screenNumber - 1;
			currentDeviceAddress = GROVE_TWO_RGB_LED_MATRIX_DEF_I2C_ADDR + offsetAddress;
		}
		GroveTwoRGBLedMatrixClass(uint8_t base, uint8_t screenNumber)
		{
			if (!(screenNumber >= 1 && screenNumber <= 16)) screenNumber = 1;
			if (!(base >= 0x10 && base <= 0x70)) base = GROVE_TWO_RGB_LED_MATRIX_DEF_I2C_ADDR;
			offsetAddress = screenNumber - 1;
			baseAddress = base;
			currentDeviceAddress = offsetAddress + baseAddress;
		}


	public:

		// /*************************************************************
		// * Description
		// *    Get vendor ID of device.
		// * Parameter
		// *    Null.
		// * Return
		// *    Return vendor ID of device.
		// *************************************************************/
		uint16_t getDeviceVID(void);

		// /*************************************************************
		// * Description
		// *    Get product ID of device.
		// * Parameter
		// *    Null.
		// * Return
		// *    Return product ID of device.
		// *************************************************************/
		uint16_t getDevicePID(void);

		// /*************************************************************
		// * Description
		// *    Change i2c base address of device.
		// * Parameter
		// *    newAddress: 0x10-0x70, The new i2c base address of device.
		// * Return
		// *    Null.
		// *************************************************************/
		void changeDeviceBaseAddress(uint8_t newAddress);

		// /*************************************************************
		// * Description
		// *    Restore the i2c address of device to default.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void defaultDeviceAddress(void);

		// /*************************************************************
		// * Description
		// *    Turn on the indicator LED flash mode.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void turnOnLedFlash(void);

		// /*************************************************************
		// * Description
		// *    Turn off the indicator LED flash mode.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void turnOffLedFlash(void);

		// /*************************************************************
		// * Description
		// *    Enable device auto sleep mode. Send any I2C commands will 
		// * wake up all the sleepy devices.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void enableAutoSleep(void);

		// /*************************************************************
		// * Description
		// *    Don't need this function anymore.
		// *    (Wake device from sleep mode. It takes about 0.15ms.)
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void wakeDevice(void);

		// /*************************************************************
		// * Description
		// *    Disable device auto sleep mode.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void disableAutoSleep(void);

        // /*************************************************************
		// * Description
		// *    Setting the display orientation.
		// *    This function can be used before or after display.
		// *	DO NOT WORK with displayColorWave(), displayClockwise(), displayColorAnimation()
		// * Parameter
		// *    orientation: DISPLAY_ROTATE_0, DISPLAY_ROTATE_90, DISPLAY_ROTATE_180,
		// * DISPLAY_ROTATE_270, which means the display will rotate 0°, 90°,180° or 270°.
		// * Return
		// *    Null.
		// *************************************************************/
        void setDisplayOrientation(orientation_type_t orientation);

        // /*************************************************************
		// * Description
		// *    Setting the display offset of x-axis and y-axis.
		// *    This function can be used before or after display.
		// *	DO NOT WORK with displayColorWave(), displayClockwise(), displayColorAnimation(),
		// * 	displayNumber(when number<0 or number>=10), displayString(when more than one character)
		// * Parameter
		// *    offset_x: The display offset value of horizontal x-axis, range from -8 to 8.
        // *    offset_y: The display offset value of horizontal y-axis, range from -8 to 8.
		// * Return
		// *    Null.
		// *************************************************************/
        void setDisplayOffset(int offset_x, int offset_y);

        // /*************************************************************
		// * Description
		// *    Display a bar on RGB LED Matrix.
		// * Parameter
		// *    bar: 0 - 32. 0 is blank and 32 is full.
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, and the duration_time will not work.
		// *			      Or set it to false to display one time.			
		// *    color: Set the color of the display, range from 0 to 255. See COLORS for more details.
		// * Return
		// *    Null.
		// *************************************************************/
		void displayBar(uint8_t bar, uint16_t duration_time, bool forever_flag = false, uint8_t color = 0);
		
		
		// /*************************************************************
		// * Description
		// *    Display a colorful bar on RGB LED Matrix.
		// * Parameter
		// *    bar: 0 - 32. 0 is blank and 32 is full.
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, and the duration_time will not work.
		// *			      Or set it to false to display one time.			
		// * Return
		// *    Null.
		// *************************************************************/
		void displayColorBar(uint8_t bar, uint16_t duration_time, bool forever_flag = false);

		// /*************************************************************
		// * Description
		// *    Display a wave on RGB LED Matrix.
		// * Parameter
		// *    color: Set the color of the display, range from 0 to 255. See COLORS for more details.
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, and the duration_time will not work.
		// *			      Or set it to false to display one time.			
		// * Return
		// *    Null.
		// *************************************************************/
		void displayColorWave(uint8_t color, uint16_t duration_time, bool forever_flag = false);

		// /*************************************************************
		// * Description
		// *    Display a clockwise(or anti-clockwise) animation on RGB LED Matrix.
		// * Parameter
		// *    is_cw: Set it true to display a clockwise animation, while set it false to display a anti-clockwise
		// *	is_big: Set it true to display a 8*8 animation, while set it false to display a 4*4 animation
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, and the duration_time will not work.
		// *			      Or set it to false to display one time.			
		// * Return
		// *    Null.
		// *************************************************************/
		void displayClockwise(bool is_cw, bool is_big, uint16_t duration_time, bool forever_flag = false);

		// /*************************************************************
		// * Description
		// *    Display other built-in animations on RGB LED Matrix.
		// * Parameter
		// *    index: the index of animations, 
		// *			0. big clockwise 
		// *			1. small clockwise
		// *			2. rainbow cycle
		// *			3. fire
		// *			4. walking child
		// *			5. broken heart
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, and the duration_time will not work.
		// *			      Or set it to false to display one time.			
		// * Return
		// *    Null.
		// *************************************************************/
		void displayColorAnimation(uint8_t index, uint16_t duration_time, bool forever_flag = false);

        // /*************************************************************
		// * Description
		// *    Display emoji on LED matrix.
		// * Parameter
		// *    emoji: Set a number from 0 to 29 for different emoji.	
		// *			0	smile	10	heart		    20	house
		// *			1	laugh	11	small heart		21	tree
		// *			2	sad	    12	broken heart	22	flower
		// *			3	mad	    13	waterdrop		23	umbrella
		// *			4	angry	14	flame		    24	rain
		// *			5	cry	    15	creeper		    25	monster
		// *			6	greedy	16	mad creeper		26	crab
		// *			7	cool	17	sword		    27	duck
		// *			8	shy	    18	wooden sword	28	rabbit
		// *			9	awkward	19	crystal sword	29	cat
		// *			30  up		31  down			32 left
		// *			33  right	34  smile face 3
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, and the duration_time will not work. 
		// *			      Or set it to false to display one time.			
		// * Return
		// *    Null.
		// *************************************************************/
		void displayEmoji(uint8_t emoji, uint16_t duration_time, bool forever_flag = false);

		// /*************************************************************
		// * Description
		// *    Display a number(-32768 ~ 32767) on LED matrix.
		// * Parameter
		// *    number: Set the number you want to display on LED matrix. Number(except 0-9)
		// *            will scroll horizontally, the shorter you set the duration time, 
		// *			the faster it scrolls. The number range from -32768 to +32767, if 
		// *			you want to display larger number, please use displayString().
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, or set it to false to display one time.
		// *    color: Set the color of the display, range from 0 to 255. See COLORS for more details.
		// * Return
		// *    Null.
		// *************************************************************/
		void displayNumber(int16_t number, uint16_t duration_time, bool forever_flag = false, uint8_t color = 0);

		// /*************************************************************
		// * Description
		// *    Display a string on LED matrix.
		// * Parameter
		// *    str: The string pointer, the maximum length is 28 bytes. String will 
		// *		 scroll horizontally when its length is more than 1. The shorter 
		// *		 you set the duration time, the faster it scrolls.
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, or set it to false to display one time.
		// *    color: Set the color of the display, range from 0 to 255. See COLORS for more details.
		// * Return
		// *    Null.
		// *************************************************************/
		void displayString(char *str, uint16_t duration_time, bool forever_flag = false, uint8_t color = 0);

		// /*************************************************************
		// * Description
		// *    Display user-defined frames on LED matrix.
		// * Parameter
		// *    buffer: The data pointer. 1 frame needs 64bytes data. Frames will switch
		// *            automatically when the frames_number is larger than 1. The shorter 
		// *			you set the duration_time, the faster it switches.
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, or set it to false to display one time.
		// *    frames_number: the number of frames in your buffer. Range from 1 to 5.
		// * Return
		// *    Null.
		// *************************************************************/
		void displayFrames(uint8_t *buffer, uint16_t duration_time, bool forever_flag, uint8_t frames_number);
		void displayFrames(uint64_t *buffer, uint16_t duration_time, bool forever_flag, uint8_t frames_number);

		// /*************************************************************
		// * Description
		// *    Display color block on LED matrix with a given uint32_t rgb color.
		// * Parameter
		// *    rgb: uint32_t rgb color, such as 0xff0000(red), 0x0000ff(blue)
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display.
		// *	forever_flag: Set it to true to display forever, or set it to false to display one time.
		// * Return
		// *    Null.
		// *************************************************************/
		void displayColorBlock(uint32_t rgb, uint16_t duration_time, bool forever_flag);
		
		// /*************************************************************
		// * Description
		// *    Display nothing on LED Matrix.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void stopDisplay(void);

        // /*************************************************************
		// * Description
		// *    Store the frames(you send to the device) to flash. It takes about 200ms.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void storeFrames(void);

        // /*************************************************************
		// * Description
		// *    Delete all the frames in the flash of device. It takes about 200ms.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
		void deleteFrames(void);

  		// /*************************************************************
		// * Description
		// *    Display frames which is stored in the flash of device.
		// * Parameter
		// *    duration_time: Set the display time(ms) duration. Set it to 0 to not display. If there
		// *                   are more than 1 frame to display, frames will switch automatically. The  
		// *			       shorter you set the duration_time, the faster it switches.
		// *	forever_flag: Set it to true to display forever, or set it to false to display one time.
		// *    from: the index of frames in your flash. Range from 1 to 5. 
		// *    to: the index of frames in your flash. Range from 1 to 5.
		// * Return
		// *    Null.
		// *************************************************************/
		void displayFramesFromFlash(uint16_t duration_time, bool forever_flag, uint8_t from, uint8_t to);

        // /*************************************************************
		// * Description
		// *    Enable TX and RX pin test mode.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
        void enableTestMode(void);

        // /*************************************************************
		// * Description
		// *    Enable TX and RX pin test mode.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
        void disableTestMode(void);

        // /*************************************************************
		// * Description
		// *    Get software vresion.
		// * Parameter
		// *    Null.
		// * Return
		// *    Return software version.
		// *************************************************************/
        uint32_t getTestVersion(void);

        // /*************************************************************
		// * Description
		// *    Reset device.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
        void resetDevice(void);

		// /*************************************************************
		// * Description
		// *    Get device id.
		// * Parameter
		// *    Null.
		// * Return
		// *    Null.
		// *************************************************************/
        void getDeviceId(void);


		uint8_t currentDeviceAddress;
		uint8_t offsetAddress;
		uint8_t baseAddress;

        uint32_t deviceId[3]; // Unique device ID(96 bits: Low, Middle, High)

};


#endif
