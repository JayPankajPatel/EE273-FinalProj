# EE273-FinalProj
SoC I2C Master Verification

# File Structure
## duts
This is where are all of the DUTs are located
the non-numbered dut is the working one and all else are in unknown condition
## intf
Here lies the interface for the dut  
## package
Here lies all of the files that need to be included for the simulation to compile and run
## ref
Contains `sb_calc_exp.svh` which will have the reference model implementation
## seq 
Contains the transaction sequences to be put on the DUT
## sim
Contains the run script, logs for compliation and simulation
To run the project you must run the `run` script inside of `./sim`
## test 
Contains a test that builds the environment
## trans
Contains transaction message definition
## uvc
Contains Universial Verification Components which includes the following: 
- comparator scoreboard
- predictor scoreboard
- agent
- environment
- monitor
- driver
- sequencer
- scoreboard composed of the comparator and predictor scoreboard


## Coding Conventions 
All files that do not end in `.svh` are included, `.sv` files are passed via the command line in the run script  
New sequences should be derived from `tr_sequence.svh`  and put in the `seq` folder
