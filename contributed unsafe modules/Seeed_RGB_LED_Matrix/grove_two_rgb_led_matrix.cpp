
#include "grove_two_rgb_led_matrix.h"
#include "shims.h"

void _delayMs(unsigned short delay);
void _delayUs(unsigned short delayUs);

inline void delay(unsigned short delay) {
	_delayMs(delay);
}

inline void delayMicroseconds(unsigned short delayUs) {
	_delayUs(delayUs);
}

// was...
// Wire.beginTransmission(address);
// Wire.write(data);
// Wire.endTransmission();
void i2cSendByte(uint8_t address, uint8_t data)
{
	_i2cWriteByte(address, data);
}

// was...
// Wire.beginTransmission(address);
// Wire.write(data, len);
// Wire.endTransmission();
void i2cSendBytes(uint8_t address, uint8_t *data, uint8_t len)
{
	_i2cWriteBuffer(address, len, (const char*)data, false);
}

// was...
// Wire.beginTransmission(address);
// Wire.write(&cbytes, 1);
// Wire.write(data, len);
// Wire.endTransmission();
void i2cSendContinueBytes(uint8_t address, uint8_t *data, uint8_t len)
{
	uint8_t cbytes = I2C_CMD_CONTINUE_DATA;

	_i2cstart();
	_i2cwrite((address&0x7f)<<1);
	_i2cwrite(cbytes);
	for (int i = 0; i < len; i++) {
		_i2cwrite(data[i]);
	}
	_i2cstop();
}

// was...
// uint8_t i = 0;
// Wire.requestFrom(address, len);
// while(Wire.available())data[i ++] = Wire.read();
void i2cReceiveBytes(uint8_t address, uint8_t *data, uint8_t len)
{
	const char * buffer = _i2cReadBuffer(address, len);
	memcpy(data, buffer, len);
}


uint16_t GroveTwoRGBLedMatrixClass::getDeviceVID(void)
{
	uint8_t data[4] = {0, };

	i2cSendByte(currentDeviceAddress, I2C_CMD_GET_DEV_ID);
	i2cReceiveBytes(currentDeviceAddress, data, 4);

	return (uint16_t)(data[0] + data[1] * 256);
}

uint16_t GroveTwoRGBLedMatrixClass::getDevicePID(void)
{
	uint8_t data[4] = {0, };

	i2cSendByte(currentDeviceAddress, I2C_CMD_GET_DEV_ID);
	i2cReceiveBytes(currentDeviceAddress, data, 4);

	return (uint16_t)(data[2] + data[3] * 256);
}

void GroveTwoRGBLedMatrixClass::changeDeviceBaseAddress(uint8_t newAddress)
{
	uint8_t data[2] = {0, };

	if (!(newAddress >= 0x10 && newAddress <= 0x70)) newAddress = GROVE_TWO_RGB_LED_MATRIX_DEF_I2C_ADDR;

	data[0] = I2C_CMD_SET_ADDR;
	data[1] = newAddress;
	baseAddress = newAddress;

	i2cSendBytes(currentDeviceAddress, data, 2);

	currentDeviceAddress = baseAddress + offsetAddress;
	delay(200);
}

void GroveTwoRGBLedMatrixClass::defaultDeviceAddress(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_RST_ADDR);

	baseAddress = GROVE_TWO_RGB_LED_MATRIX_DEF_I2C_ADDR;
	currentDeviceAddress = baseAddress + offsetAddress;
	delay(200);
}

void GroveTwoRGBLedMatrixClass::turnOnLedFlash(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_LED_ON);
}

void GroveTwoRGBLedMatrixClass::turnOffLedFlash(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_LED_OFF);
}

void GroveTwoRGBLedMatrixClass::enableAutoSleep(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_AUTO_SLEEP_ON);
}

void GroveTwoRGBLedMatrixClass::wakeDevice(void)
{
	
	delayMicroseconds(200);
}

void GroveTwoRGBLedMatrixClass::disableAutoSleep(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_AUTO_SLEEP_OFF);
}

void GroveTwoRGBLedMatrixClass::setDisplayOrientation(orientation_type_t orientation)
{
    uint8_t data[2] = {0, };

    data[0] = I2C_CMD_DISP_ROTATE;
	data[1] = (uint8_t)orientation;

    i2cSendBytes(currentDeviceAddress, data, 2);
}

void GroveTwoRGBLedMatrixClass::setDisplayOffset(int offset_x, int offset_y)
{
	// convert to positive
    offset_x +=8;
	offset_y +=8;
	if (offset_x < 0) offset_x = 0;
	else if (offset_x > 16) offset_x = 16;
	if (offset_y < 0) offset_y = 0;
	else if (offset_y > 16) offset_y = 16;

	uint8_t data[3] = {0, };

    data[0] = I2C_CMD_DISP_OFFSET;
	data[1] = (uint8_t)offset_x;
    data[2] = (uint8_t)offset_y;

    i2cSendBytes(currentDeviceAddress, data, 3);
}

void GroveTwoRGBLedMatrixClass::displayBar(uint8_t bar, uint16_t duration_time, bool forever_flag, uint8_t color)
{
	uint8_t data[6] = {0, };

	data[0] = I2C_CMD_DISP_BAR;

	if (bar > 32) bar = 32;
	data[1] = bar;
	data[2] = (uint8_t)(duration_time & 0xff);
	data[3] = (uint8_t)((duration_time >> 8) & 0xff);
	data[4] = forever_flag;
	data[5] = color;

	i2cSendBytes(currentDeviceAddress, data, 6);
}

void GroveTwoRGBLedMatrixClass::displayEmoji(uint8_t emoji, uint16_t duration_time, bool forever_flag)
{
	uint8_t data[5] = {0, };

	data[0] = I2C_CMD_DISP_EMOJI;
	data[1] = emoji;
	data[2] = (uint8_t)(duration_time & 0xff);
	data[3] = (uint8_t)((duration_time >> 8) & 0xff);
	data[4] = forever_flag;

	i2cSendBytes(currentDeviceAddress, data, 5);
}

void GroveTwoRGBLedMatrixClass::displayNumber(int16_t number, uint16_t duration_time, bool forever_flag, uint8_t color)
{
	uint8_t data[7] = {0, };
	data[0] = I2C_CMD_DISP_NUM;
	data[1] = (uint8_t)((uint16_t)number & 0xff);
	data[2] = (uint8_t)(((uint16_t)number >> 8) & 0xff);
	data[3] = (uint8_t)(duration_time & 0xff);
	data[4] = (uint8_t)((duration_time >> 8) & 0xff);
	data[5] = forever_flag;
	data[6] = color;

	i2cSendBytes(currentDeviceAddress, data, 7);
}

void GroveTwoRGBLedMatrixClass::displayString(char *str, uint16_t duration_time, bool forever_flag, uint8_t color)
{
	uint8_t data[36] = {0, }, len = strlen(str);

	if(len >= 28) len = 28;

	for(uint8_t i = 0; i < len; i++) data[i + 6] = str[i];

	data[0] = I2C_CMD_DISP_STR;
	data[1] = forever_flag;
	data[2] = (uint8_t)(duration_time & 0xff);
	data[3] = (uint8_t)((duration_time >> 8) & 0xff);
	data[4] = len;
	data[5] = color;

	if (len > 25)
	{
		i2cSendBytes(currentDeviceAddress, data, 31);
		delay(1);
		i2cSendContinueBytes(currentDeviceAddress, data+31, (len - 25));
	}else
	{
		i2cSendBytes(currentDeviceAddress, data, (len + 6));
	}
	
}

void GroveTwoRGBLedMatrixClass::displayFrames(uint8_t *buffer, uint16_t duration_time, bool forever_flag, uint8_t frames_number)
{
	uint8_t data[72] = {0, };
	// max 5 frames in storage
	if (frames_number > 5) frames_number = 5;
	else if (frames_number == 0) return;

	data[0] = I2C_CMD_DISP_CUSTOM;
	data[1] = 0x0;
	data[2] = 0x0;
	data[3] = 0x0;
	data[4] = frames_number;

	for (int i=frames_number-1;i>=0;i--)
	{
		data[5] = i;
		for (int j=0;j<64;j++) data[8+j] = buffer[j+i*64];
		if (i == 0)
		{
			// display when everything is finished.
			data[1] = (uint8_t)(duration_time & 0xff);
			data[2] = (uint8_t)((duration_time >> 8) & 0xff);
			data[3] = forever_flag;
		}
		i2cSendBytes(currentDeviceAddress, data, 24);
		delay(1);
		i2cSendContinueBytes(currentDeviceAddress, data+24, 24);
		delay(1);
		i2cSendContinueBytes(currentDeviceAddress, data+48, 24);
	}
}

void GroveTwoRGBLedMatrixClass::displayFrames(uint64_t *buffer, uint16_t duration_time, bool forever_flag, uint8_t frames_number)
{
	uint8_t data[72] = {0, };
	// max 5 frames in storage
	if (frames_number > 5) frames_number = 5;
	else if (frames_number == 0) return;

	data[0] = I2C_CMD_DISP_CUSTOM;
	data[1] = 0x0;
	data[2] = 0x0;
	data[3] = 0x0;
	data[4] = frames_number;

	for (int i=frames_number-1;i>=0;i--)
	{
		data[5] = i;
		// different from uint8_t buffer
		for (int j = 0; j< 8; j++)
		{
			for (int k = 7; k >= 0; k--)
			{
				data[8+j*8+(7-k)] = ((uint8_t *)buffer)[j*8+k+i*64];
			}
		}

		if (i == 0)
		{
			// display when everything is finished.
			data[1] = (uint8_t)(duration_time & 0xff);
			data[2] = (uint8_t)((duration_time >> 8) & 0xff);
			data[3] = forever_flag;
		}
		i2cSendBytes(currentDeviceAddress, data, 24);
		delay(1);
		i2cSendContinueBytes(currentDeviceAddress, data+24, 24);
		delay(1);
		i2cSendContinueBytes(currentDeviceAddress, data+48, 24);
	}
}

void GroveTwoRGBLedMatrixClass::stopDisplay(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_DISP_OFF);
}

void GroveTwoRGBLedMatrixClass::storeFrames(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_STORE_FLASH);
	delay(200);
}

void GroveTwoRGBLedMatrixClass::deleteFrames(void)
{
	i2cSendByte(currentDeviceAddress, I2C_CMD_DELETE_FLASH);
	delay(200);
}


void GroveTwoRGBLedMatrixClass::displayFramesFromFlash(uint16_t duration_time, bool forever_flag, uint8_t from, uint8_t to)
{
	uint8_t data[6] = {0, };

	uint8_t temp = 0;
	// 1 <= from <= to <= 5
	if (from < 1) from = 1;
	else if (from > 5) from =5;
	
	if (to < 1) to = 1;
	else if (to > 5) to = 5;

	if (from > to) 
	{
		temp = from;
		from = to;
		to = temp;
	}

	data[0] = I2C_CMD_DISP_FLASH;
	data[1] = (uint8_t)(duration_time & 0xff);
	data[2] = (uint8_t)((duration_time >> 8) & 0xff);
	data[3] = forever_flag;
	data[4] = from-1;
	data[5] = to-1;

	i2cSendBytes(currentDeviceAddress, data, 6);
	delay(200);
}

void GroveTwoRGBLedMatrixClass::displayColorBlock(uint32_t rgb, uint16_t duration_time, bool forever_flag)
{
	uint8_t data[7] = {0, };
	data[0] = I2C_CMD_DISP_COLOR_BLOCK;
	// red green blue
	data[1] = (uint8_t)((rgb >> 16) & 0xff);
	data[2] = (uint8_t)((rgb >> 8) & 0xff);
	data[3] = (uint8_t)(rgb & 0xff);

	data[4] = (uint8_t)(duration_time & 0xff);
	data[5] = (uint8_t)((duration_time >> 8) & 0xff);
	data[6] = forever_flag;

	i2cSendBytes(currentDeviceAddress, data, 7);
}


void GroveTwoRGBLedMatrixClass::displayColorBar(uint8_t bar, uint16_t duration_time, bool forever_flag)
{
	uint8_t data[5] = {0, };
	data[0] = I2C_CMD_DISP_COLOR_BAR;

	if (bar > 32) bar = 32;
	data[1] = bar;
	data[2] = (uint8_t)(duration_time & 0xff);
	data[3] = (uint8_t)((duration_time >> 8) & 0xff);
	data[4] = forever_flag;
	
	i2cSendBytes(currentDeviceAddress, data, 5);
}


void GroveTwoRGBLedMatrixClass::displayColorWave(uint8_t color, uint16_t duration_time, bool forever_flag)
{
	uint8_t data[5] = {0, };
	data[0] = I2C_CMD_DISP_COLOR_WAVE;
	data[1] = color;
	data[2] = (uint8_t)(duration_time & 0xff);
	data[3] = (uint8_t)((duration_time >> 8) & 0xff);
	data[4] = forever_flag;

	i2cSendBytes(currentDeviceAddress, data, 5);
}

	
void GroveTwoRGBLedMatrixClass::displayClockwise(bool is_cw, bool is_big, uint16_t duration_time, bool forever_flag)
{
	uint8_t data[6] = {0, };
	data[0] = I2C_CMD_DISP_COLOR_CLOCKWISE;
	data[1] = is_cw;
	data[2] = is_big;
	data[3] = (uint8_t)(duration_time & 0xff);
	data[4] = (uint8_t)((duration_time >> 8) & 0xff);
	data[5] = forever_flag;

	i2cSendBytes(currentDeviceAddress, data, 6);
}
void GroveTwoRGBLedMatrixClass::displayColorAnimation(uint8_t index, uint16_t duration_time, bool forever_flag)
{
	uint8_t data[6] = {0, };
	uint8_t from, to;
	data[0] = I2C_CMD_DISP_COLOR_ANIMATION;
	switch(index){
		case 0:
			from = 0;
			to = 28;
		break;

		case 1:
			from = 29;
			to = 41;
		break;

		case 2:				// rainbow cycle
			from = 255;
			to = 255;
		break;

		case 3: 			// fire 
			from = 254;
			to = 254;
		break;

		case 4: 			// walking
			from = 42;
			to = 43;
		break;

		case 5:				// broken heart
			from = 44;
			to = 52;
		break;

		default:
		break;
	}

	data[1] = from;
	data[2] = to;
	data[3] = (uint8_t)(duration_time & 0xff);
	data[4] = (uint8_t)((duration_time >> 8) & 0xff);
	data[5] = forever_flag;

	i2cSendBytes(currentDeviceAddress, data, 6);
}


void GroveTwoRGBLedMatrixClass::enableTestMode(void)
{
    i2cSendByte(currentDeviceAddress, I2C_CMD_TEST_TX_RX_ON);
}

void GroveTwoRGBLedMatrixClass::disableTestMode(void)
{
    i2cSendByte(currentDeviceAddress, I2C_CMD_TEST_TX_RX_OFF);
}

uint32_t GroveTwoRGBLedMatrixClass::getTestVersion(void)
{
    uint8_t data[3] = {0, };

	i2cSendByte(currentDeviceAddress, I2C_CMD_TEST_GET_VER);
	i2cReceiveBytes(currentDeviceAddress, data, 3);
	return (uint32_t)(data[2] + (uint32_t)data[1] * 256 + (uint32_t)data[0] * 256 * 256);
}

void GroveTwoRGBLedMatrixClass::resetDevice(void)
{
    
}

void GroveTwoRGBLedMatrixClass::getDeviceId(void)
{
    i2cSendByte(currentDeviceAddress, I2C_CMD_GET_DEVICE_UID);
	i2cReceiveBytes(currentDeviceAddress, (uint8_t *)deviceId, 12);
}
