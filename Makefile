#
# Makefile for the i2c core.
#

obj-$(CONFIG_I2C_BOARDINFO)	+= i2c-boardinfo.o
obj-$(CONFIG_I2C)		+= i2c-core.o
obj-$(CONFIG_I2C_SMBUS)		+= i2c-smbus.o
obj-$(CONFIG_I2C_CHARDEV)	+= i2c-dev.o
obj-y				+= algos/ busses/ chips/

ifeq ($(CONFIG_I2C_DEBUG_CORE),y)
EXTRA_CFLAGS += -DDEBUG
endif
