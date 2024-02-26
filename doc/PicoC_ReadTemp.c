/*
 * read the temperature sensor in A/G IMU
 * using Pico-C
 */
#define AG_SLAVE_ADDR	0xD6
#define CHIPID_REG	0x0F
#define ENABLE_REG	0x10
#define TEMP_REG	0x15

unsigned char rx[2];
unsigned char GetChipID() {
  I2CRead(AG_SLAVE_ADDR, CHIPID_REG, rx, 1, 0);
  return rx[0];
}

unsigned char chipID;
chipID = GetChipID();
printf("chipID: %x\r\n", chipID);

void EnableAG() {
  unsigned char x[2];
  /* a bit special: x[] needs register address and byte to write */
  x[0] = ENABLE_REG;	//enable register
  x[1] = 0xA0;		//enable value
  I2CWrite(AG_SLAVE_ADDR, x, 2, 0);
}

unsigned short GetTemp() {
  unsigned char cid;
  cid = GetChipID();
  if (cid != 0x68) {
    printf("cannot find A/G chip ID\r\n");
    return 0;	//0 as wrong temperature
  }
  else
  {
    signed short temp;
    I2CRead(AG_SLAVE_ADDR, TEMP_REG, rx, 2, 0);
    temp = rx[0];
    temp |= rx[1] << 8;
    temp = 25 + (temp / 16);
    return temp;
  }
}

/* use the defined function */
unsigned short t;
EnableAG();	/* enable the A/G sensor */
mssleep(1000);	/* wait a bit until first measurement is complete */

void DisplayTemp() {
  int i;
  for (i = 0; i < 10; i++) {
    t = GetTemp();
    printf("temperature: %d[C]\r\n", t);
    mssleep(1000);	/* every 1sec a new display */
  }
}

DisplayTemp();

