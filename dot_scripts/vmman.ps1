
function vrun {
    py .\Scripts\vmrunner\vmrunner.py $args
}

# function vmman {
#     # cmds:
#     # for management
#         # add
#         # remove
#         # list
#     # start
#         # vmman start VMNAME nogui
#     # config
#         # runtime: vmman config target player

#     Foreach($i in $args) {
#         Write-Output $i;
#     }

#     switch ($args[0]) {
#         "start" { vmman_start $args[1..$args.length] }
#     }
    
# }

# function start-vm {
#     vmrun.exe -T player start "C:\Users\pumkin\Documents\Virtual Machines\Debian 11.x 64-bit\Debian 11.x 64-bit.vmx" nogui
# }

# function stop-vm {
#     vmrun.exe -T player suspend "C:\Users\pumkin\Documents\Virtual Machines\Debian 11.x 64-bit\Debian 11.x 64-bit.vmx" nogui
# }

# function connect-vm {
#     ssh 192.168.0.224
# }

# function scvm {
#     Write-Output "Starting VM..."
#     Start-VM
#     Write-Output "Attempting to connect..."
#     Connect-VM
# }