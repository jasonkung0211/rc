

# cat /proc/cpuinfo
# lscpu


# Lm_sensors comes pre-installed with most modern Linux operating systems. If it is not 
# installed already, you can install it as shown below.
#sudo apt-get install -y lm-sensors

# run the following command to configure lm_sensors:
#yes | sudo sensors-detect


# To monitor the CPU temperature in real time, you can use ‘watch’ command like below.
watch -n.5 sensors

