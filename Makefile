MCU = t4

TARGET = main

AVRA = avra

AVRDUDE = avrdude
AVRDUDE_PROGRAMMER = ftdi-tpi -P /dev/cu.usbserial-A4006DGP
AVRDUDE_WRITE_FLASH = -U flash:w:$(TARGET).hex

all: build
	
install:
	$(AVRDUDE) -c $(AVRDUDE_PROGRAMMER) -p $(MCU) $(AVRDUDE_WRITE_FLASH)

build:
	$(AVRA) $(TARGET).asm

clean:
	rm $(TARGET).hex $(TARGET).eep.hex $(TARGET).obj
