#!/usr/bin/env bash
MQTT_HOST=192.168.1.109

git clone https://github.com/mysensors/MySensors.git --branch master
cd MySensors

## Configure and build
./configure --my-transport=rfm95 --my-rfm95-frequency=434  \
    --my-rfm95-irq-pin=16 \
    --my-gateway=mqtt --my-controller-ip-address=$MQTT_HOST \
    --my-mqtt-publish-topic-prefix=mys95-out \
    --my-mqtt-subscribe-topic-prefix=mys95-in \
    --my-mqtt-client-id=rovik-pi-95 \
    --extra-cxxflags="-DMYR_FM95_RST_PIN=7" \
    --spi-driver=SPIDEV --spi-spidev-device=/dev/spidev0.1

make -j4
sudo cp bin/mysgw /usr/local/bin/mysgw95

./configure --my-transport=rf24  \
    --my-gateway=mqtt --my-controller-ip-address=$MQTT_HOST \
    --my-mqtt-publish-topic-prefix=mys24-out \
    --my-mqtt-subscribe-topic-prefix=mys24-in \
    --my-mqtt-client-id=rovik-pi-24 \
    --spi-driver=SPIDEV --spi-spidev-device=/dev/spidev0.0

make -j4
sudo cp bin/mysgw /usr/local/bin/mysgw24

# Make systemd services
sudo cp initscripts/mysgw.systemd /etc/systemd/system/mysgw95.service
sudo cp initscripts/mysgw.systemd /etc/systemd/system/mysgw24.service

sudo sed -i -e "s|%gateway_dir%/mysgw|/usr/local/bin/mysgw95|g" /etc/systemd/system/mysgw95.service
sudo sed -i -e "s|%gateway_dir%/mysgw|/usr/local/bin/mysgw24|g" /etc/systemd/system/mysgw24.service

sudo systemctl daemon-reload

echo -e "Run to enable both at startup\n\tsudo systemctl enable mysgw95\n\tsudo systemctl enable mysgw24"
echo -e "Run to start now\n\tsudo systemctl start mysgw95\n\tsudo systemctl start mysgw24"
