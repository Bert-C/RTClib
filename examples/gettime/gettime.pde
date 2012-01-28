// Get date and time using a DS1307, DS1337 or DS1340 RTC connected via I2C


#include <Wire.h>
#include "DS1340lib.h"

RTC_DS1307 RTC;

void setup () {
    Serial.begin(57600); // Set serial port speed
    Wire.begin(); // Start the I2C
    RTC.begin(); // Init RTC
}

void loop () {
    DateTime now = RTC.now(); // Read the time and date from the DS1340
    
    Serial.print(now.year(), DEC);
    Serial.print('/');
    Serial.print(now.month(), DEC);
    Serial.print('/');
    Serial.print(now.day(), DEC);
    Serial.print(' ');
    Serial.print(now.hour(), DEC);
    Serial.print(':');
    Serial.print(now.minute(), DEC);
    Serial.print(':');
    Serial.print(now.second(), DEC);
    Serial.println();
    
    delay(3000);
}