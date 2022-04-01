#!/usr/bin/env python3
import serial, datetime, trio

go=True
f = open("./field_data.txt", "a")
ser = serial.Serial(port='COM1', baudrate=9600, bytesize=7, parity=serial.PARITY_ODD, stopbits=1, timeout=None)

async def TxRx(data):
    t = datetime.datetime.now()
    f.write("Started at: "  + t.strftime("%m/%y  %H:%M:%S\n"))
    f.write("Date, X Field, Y Field, Z Field\n")
    f.write("______________________________________\n")

    while go:
        sendBytes = str.encode(data+'\r\n')
        ser.write(sendBytes)
        await trio.sleep(1)
        t = datetime.datetime.now()
        recv = t.strftime("%H:%M:%S" + "," + ser.read_all().decode('utf-8'))
        print(recv)
        f.write(recv)

async def main():    
    print("Press ctrl+c to quit")
    await trio.sleep(1)
    print("Starting acquisition...\n")
    await TxRx("ALLF?")
    if ser.is_open: ser.close()

trio.run(main)
