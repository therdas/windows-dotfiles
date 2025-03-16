import subprocess as sp
import pathlib
import shlex
import sqlite3

import argparse

vmware_exec_path = pathlib.PureWindowsPath(r"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe").as_posix()
print(f"Executable path: {vmware_exec_path}")

# hardcoded vm values

vm_paths = {
    "asteri": pathlib.PureWindowsPath(r"C:\Users\pumkin\Documents\Virtual Machines\HomeVM\HomeVM.vmx").as_posix()
}

parser = argparse.ArgumentParser(
    prog='Virtual Machine Run Utility [VRU]',
    description='Allows you to easily run VMWare VMs from the command line, directly'
)
parser.add_argument('action', help="Action to be taken")
parser.add_argument('vmname', help="Name of the Virtual Machine")
parser.add_argument('-s', '--nogui', help="Run without GUI", action="store_true")

args = parser.parse_args()

if(args.action == "start"):
    command = f"\"{vmware_exec_path}\" -T ws start \"{vm_paths['asteri']}\" nogui"
elif(args.action == "suspend"):
    command = f"\"{vmware_exec_path}\" -T ws suspend \"{vm_paths['asteri']}\" nogui"
else:
    command = "echo \"Action Not Supported\""
lxd = shlex.split(command)
p = sp.Popen(lxd, start_new_session=True)   