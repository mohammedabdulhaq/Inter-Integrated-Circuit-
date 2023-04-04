# Inter-Integrated-Circuit with UVM and System Verilog Test Benches

The I2C (Inter-Integrated Circuit) protocol is a widely used synchronous serial communication protocol that enables communication between electronic devices. It uses two bidirectional lines, a clock line (SCL) and a data line (SDA), to transfer data between devices.

In I2C, one device acts as a master and initiates the communication while the other devices act as slaves and respond to the master's requests. The master sends a start condition to initiate communication, followed by the slave address of the device it wants to communicate with. The slave then acknowledges the master's request by sending an acknowledgment signal.

Once communication is established, the master can send or receive data from the slave. The communication is byte-oriented, and each byte of data is accompanied by an acknowledgement signal from the receiver.

I2C supports multiple masters and slaves on the same bus, which makes it ideal for use in multi-device systems. The protocol supports different transfer speeds, ranging from 100 Kbps to 3.4 Mbps, and also supports clock stretching, which allows the slave to slow down the communication if needed.

Overall, the I2C protocol is a simple and widely used protocol that enables communication between electronic devices in various applications, such as sensors, displays, and memory devices.

---
Copyright© Mohammed Abdul Haq (https://www.linkedin.com/in/mohammed-abdul-haq-717678142/)

RTL-Code Credit: Udemy course "SystemVerilog for Verification Part 2 : Projects"
