

sudo apt-get install cpufrequtils
sudo cpufreq-set -r -g conservative
# The -r flag is used to set the change for all ("all hardware related") cores

# or gedit /etc/init.d/cpufrequtils > to GOVERNOR="conservative"


# conservative 
# performance
# ondemand
# powersave
# userspace


# added the following one-liner to my .bashrc
# run something like 'setgov ondemand' and all cores will switch to the ondemand governor.

'''
function setgov ()
{
    echo "$1" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor 
}
'''

