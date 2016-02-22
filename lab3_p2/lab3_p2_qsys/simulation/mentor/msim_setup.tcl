
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 15.0 145 linux 2016.02.08.17:14:05

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "lab3_p2_qsys"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/apps/Altera/15.0/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/lab3_p2_qsys_onchip_memory2_0.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
}
ensure_lib                                                          ./libraries/altera_common_sv_packages/                               
vmap       altera_common_sv_packages                                ./libraries/altera_common_sv_packages/                               
ensure_lib                                                          ./libraries/error_adapter_0/                                         
vmap       error_adapter_0                                          ./libraries/error_adapter_0/                                         
ensure_lib                                                          ./libraries/border/                                                  
vmap       border                                                   ./libraries/border/                                                  
ensure_lib                                                          ./libraries/rsp_mux/                                                 
vmap       rsp_mux                                                  ./libraries/rsp_mux/                                                 
ensure_lib                                                          ./libraries/rsp_demux/                                               
vmap       rsp_demux                                                ./libraries/rsp_demux/                                               
ensure_lib                                                          ./libraries/cmd_mux/                                                 
vmap       cmd_mux                                                  ./libraries/cmd_mux/                                                 
ensure_lib                                                          ./libraries/cmd_demux/                                               
vmap       cmd_demux                                                ./libraries/cmd_demux/                                               
ensure_lib                                                          ./libraries/router_002/                                              
vmap       router_002                                               ./libraries/router_002/                                              
ensure_lib                                                          ./libraries/router/                                                  
vmap       router                                                   ./libraries/router/                                                  
ensure_lib                                                          ./libraries/avalon_st_adapter_001/                                   
vmap       avalon_st_adapter_001                                    ./libraries/avalon_st_adapter_001/                                   
ensure_lib                                                          ./libraries/avalon_st_adapter/                                       
vmap       avalon_st_adapter                                        ./libraries/avalon_st_adapter/                                       
ensure_lib                                                          ./libraries/hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter/   
vmap       hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter    ./libraries/hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter/   
ensure_lib                                                          ./libraries/rsp_mux_002/                                             
vmap       rsp_mux_002                                              ./libraries/rsp_mux_002/                                             
ensure_lib                                                          ./libraries/rsp_demux_001/                                           
vmap       rsp_demux_001                                            ./libraries/rsp_demux_001/                                           
ensure_lib                                                          ./libraries/cmd_mux_001/                                             
vmap       cmd_mux_001                                              ./libraries/cmd_mux_001/                                             
ensure_lib                                                          ./libraries/cmd_demux_002/                                           
vmap       cmd_demux_002                                            ./libraries/cmd_demux_002/                                           
ensure_lib                                                          ./libraries/SDRAM_s1_burst_adapter/                                  
vmap       SDRAM_s1_burst_adapter                                   ./libraries/SDRAM_s1_burst_adapter/                                  
ensure_lib                                                          ./libraries/hps_0_h2f_axi_master_wr_limiter/                         
vmap       hps_0_h2f_axi_master_wr_limiter                          ./libraries/hps_0_h2f_axi_master_wr_limiter/                         
ensure_lib                                                          ./libraries/router_004/                                              
vmap       router_004                                               ./libraries/router_004/                                              
ensure_lib                                                          ./libraries/router_003/                                              
vmap       router_003                                               ./libraries/router_003/                                              
ensure_lib                                                          ./libraries/SDRAM_s1_agent_rsp_fifo/                                 
vmap       SDRAM_s1_agent_rsp_fifo                                  ./libraries/SDRAM_s1_agent_rsp_fifo/                                 
ensure_lib                                                          ./libraries/SDRAM_s1_agent/                                          
vmap       SDRAM_s1_agent                                           ./libraries/SDRAM_s1_agent/                                          
ensure_lib                                                          ./libraries/sdram_master_avalon_interface_0_avalon_master_agent/     
vmap       sdram_master_avalon_interface_0_avalon_master_agent      ./libraries/sdram_master_avalon_interface_0_avalon_master_agent/     
ensure_lib                                                          ./libraries/hps_0_h2f_axi_master_agent/                              
vmap       hps_0_h2f_axi_master_agent                               ./libraries/hps_0_h2f_axi_master_agent/                              
ensure_lib                                                          ./libraries/SDRAM_s1_translator/                                     
vmap       SDRAM_s1_translator                                      ./libraries/SDRAM_s1_translator/                                     
ensure_lib                                                          ./libraries/sdram_master_avalon_interface_0_avalon_master_translator/
vmap       sdram_master_avalon_interface_0_avalon_master_translator ./libraries/sdram_master_avalon_interface_0_avalon_master_translator/
ensure_lib                                                          ./libraries/reset_from_locked/                                       
vmap       reset_from_locked                                        ./libraries/reset_from_locked/                                       
ensure_lib                                                          ./libraries/sys_pll/                                                 
vmap       sys_pll                                                  ./libraries/sys_pll/                                                 
ensure_lib                                                          ./libraries/hps_io/                                                  
vmap       hps_io                                                   ./libraries/hps_io/                                                  
ensure_lib                                                          ./libraries/fpga_interfaces/                                         
vmap       fpga_interfaces                                          ./libraries/fpga_interfaces/                                         
ensure_lib                                                          ./libraries/rst_controller/                                          
vmap       rst_controller                                           ./libraries/rst_controller/                                          
ensure_lib                                                          ./libraries/irq_mapper_001/                                          
vmap       irq_mapper_001                                           ./libraries/irq_mapper_001/                                          
ensure_lib                                                          ./libraries/irq_mapper/                                              
vmap       irq_mapper                                               ./libraries/irq_mapper/                                              
ensure_lib                                                          ./libraries/mm_interconnect_1/                                       
vmap       mm_interconnect_1                                        ./libraries/mm_interconnect_1/                                       
ensure_lib                                                          ./libraries/mm_interconnect_0/                                       
vmap       mm_interconnect_0                                        ./libraries/mm_interconnect_0/                                       
ensure_lib                                                          ./libraries/sys_clk/                                                 
vmap       sys_clk                                                  ./libraries/sys_clk/                                                 
ensure_lib                                                          ./libraries/sdram_master_avalon_interface_0/                         
vmap       sdram_master_avalon_interface_0                          ./libraries/sdram_master_avalon_interface_0/                         
ensure_lib                                                          ./libraries/ready_output/                                            
vmap       ready_output                                             ./libraries/ready_output/                                            
ensure_lib                                                          ./libraries/pushbutton/                                              
vmap       pushbutton                                               ./libraries/pushbutton/                                              
ensure_lib                                                          ./libraries/onchip_memory2_0/                                        
vmap       onchip_memory2_0                                         ./libraries/onchip_memory2_0/                                        
ensure_lib                                                          ./libraries/jtag_uart_0/                                             
vmap       jtag_uart_0                                              ./libraries/jtag_uart_0/                                             
ensure_lib                                                          ./libraries/hps_0/                                                   
vmap       hps_0                                                    ./libraries/hps_0/                                                   
ensure_lib                                                          ./libraries/done_input/                                              
vmap       done_input                                               ./libraries/done_input/                                              
ensure_lib                                                          ./libraries/SDRAM/                                                   
vmap       SDRAM                                                    ./libraries/SDRAM/                                                   

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                        -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                   -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"               -work cyclonev_pcie_hip_ver
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog -sv "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                                                     -work altera_common_sv_packages                               
  vlog -sv "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                                              -work altera_common_sv_packages                               
  vlog -sv "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                                                     -work altera_common_sv_packages                               
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -L altera_common_sv_packages -work error_adapter_0                                         
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -L altera_common_sv_packages -work error_adapter_0                                         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                           -L altera_common_sv_packages -work border                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                         -L altera_common_sv_packages -work border                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                           -L altera_common_sv_packages -work border                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                           -L altera_common_sv_packages -work border                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_hps_io_border_memory.sv"                              -L altera_common_sv_packages -work border                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_hps_io_border.sv"                                     -L altera_common_sv_packages -work border                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -L altera_common_sv_packages -work rsp_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_rsp_mux.sv"                               -L altera_common_sv_packages -work rsp_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_rsp_demux.sv"                             -L altera_common_sv_packages -work rsp_demux                                               
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -L altera_common_sv_packages -work cmd_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_cmd_mux.sv"                               -L altera_common_sv_packages -work cmd_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_cmd_demux.sv"                             -L altera_common_sv_packages -work cmd_demux                                               
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_router_002.sv"                            -L altera_common_sv_packages -work router_002                                              
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_router.sv"                                -L altera_common_sv_packages -work router                                                  
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter_001.v"                                               -work avalon_st_adapter_001                                   
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter.v"                                                   -work avalon_st_adapter                                       
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                          -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter   
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                      -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter   
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                     -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter   
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -L altera_common_sv_packages -work rsp_mux_002                                             
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_mux_002.sv"                           -L altera_common_sv_packages -work rsp_mux_002                                             
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -L altera_common_sv_packages -work rsp_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_mux.sv"                               -L altera_common_sv_packages -work rsp_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_demux_001.sv"                         -L altera_common_sv_packages -work rsp_demux_001                                           
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_demux.sv"                             -L altera_common_sv_packages -work rsp_demux                                               
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -L altera_common_sv_packages -work cmd_mux_001                                             
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_mux_001.sv"                           -L altera_common_sv_packages -work cmd_mux_001                                             
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -L altera_common_sv_packages -work cmd_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_mux.sv"                               -L altera_common_sv_packages -work cmd_mux                                                 
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_demux_002.sv"                         -L altera_common_sv_packages -work cmd_demux_002                                           
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_demux.sv"                             -L altera_common_sv_packages -work cmd_demux                                               
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                          -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                   -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                     -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                      -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                          -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                          -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                       -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                      -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                      -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                        -L altera_common_sv_packages -work SDRAM_s1_burst_adapter                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                        -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_limiter                         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                         -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_limiter                         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                 -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_limiter                         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                        -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_limiter                         
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router_004.sv"                            -L altera_common_sv_packages -work router_004                                              
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router_003.sv"                            -L altera_common_sv_packages -work router_003                                              
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router_002.sv"                            -L altera_common_sv_packages -work router_002                                              
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router.sv"                                -L altera_common_sv_packages -work router                                                  
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                              -work SDRAM_s1_agent_rsp_fifo                                 
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                            -L altera_common_sv_packages -work SDRAM_s1_agent                                          
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                     -L altera_common_sv_packages -work SDRAM_s1_agent                                          
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                           -L altera_common_sv_packages -work sdram_master_avalon_interface_0_avalon_master_agent     
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                                          -L altera_common_sv_packages -work hps_0_h2f_axi_master_agent                              
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                      -L altera_common_sv_packages -work hps_0_h2f_axi_master_agent                              
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                       -L altera_common_sv_packages -work SDRAM_s1_translator                                     
  vlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                      -L altera_common_sv_packages -work sdram_master_avalon_interface_0_avalon_master_translator
  vlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v"                                                          -work reset_from_locked                                       
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_sys_clk_sys_pll.vo"                                                                      -work sys_pll                                                 
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_hps_io.v"                                                                          -work hps_io                                                  
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                           -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                                                    -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                                       -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                                       -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                                        -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                         -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                           -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                           -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_fpga_interfaces.sv"                                   -L altera_common_sv_packages -work fpga_interfaces                                         
  vlog     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                                            -work rst_controller                                          
  vlog     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                                                          -work rst_controller                                          
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_irq_mapper_001.sv"                                          -L altera_common_sv_packages -work irq_mapper_001                                          
  vlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_irq_mapper.sv"                                              -L altera_common_sv_packages -work irq_mapper                                              
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1.v"                                                                     -work mm_interconnect_1                                       
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0.v"                                                                     -work mm_interconnect_0                                       
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_sys_clk.v"                                                                               -work sys_clk                                                 
  vlog     "$QSYS_SIMDIR/submodules/sdram_master.v"                                                                                       -work sdram_master_avalon_interface_0                         
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_ready_output.v"                                                                          -work ready_output                                            
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_pushbutton.v"                                                                            -work pushbutton                                              
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_onchip_memory2_0.v"                                                                      -work onchip_memory2_0                                        
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_jtag_uart_0.v"                                                                           -work jtag_uart_0                                             
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0.v"                                                                                 -work hps_0                                                   
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_done_input.v"                                                                            -work done_input                                              
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_SDRAM.v"                                                                                 -work SDRAM                                                   
  vlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_SDRAM_test_component.v"                                                                  -work SDRAM                                                   
  vlog     "$QSYS_SIMDIR/lab3_p2_qsys.v"                                                                                                                                                                
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L border -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_002 -L router -L avalon_st_adapter_001 -L avalon_st_adapter -L hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter -L rsp_mux_002 -L rsp_demux_001 -L cmd_mux_001 -L cmd_demux_002 -L SDRAM_s1_burst_adapter -L hps_0_h2f_axi_master_wr_limiter -L router_004 -L router_003 -L SDRAM_s1_agent_rsp_fifo -L SDRAM_s1_agent -L sdram_master_avalon_interface_0_avalon_master_agent -L hps_0_h2f_axi_master_agent -L SDRAM_s1_translator -L sdram_master_avalon_interface_0_avalon_master_translator -L reset_from_locked -L sys_pll -L hps_io -L fpga_interfaces -L rst_controller -L irq_mapper_001 -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L sys_clk -L sdram_master_avalon_interface_0 -L ready_output -L pushbutton -L onchip_memory2_0 -L jtag_uart_0 -L hps_0 -L done_input -L SDRAM -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L border -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_002 -L router -L avalon_st_adapter_001 -L avalon_st_adapter -L hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter -L rsp_mux_002 -L rsp_demux_001 -L cmd_mux_001 -L cmd_demux_002 -L SDRAM_s1_burst_adapter -L hps_0_h2f_axi_master_wr_limiter -L router_004 -L router_003 -L SDRAM_s1_agent_rsp_fifo -L SDRAM_s1_agent -L sdram_master_avalon_interface_0_avalon_master_agent -L hps_0_h2f_axi_master_agent -L SDRAM_s1_translator -L sdram_master_avalon_interface_0_avalon_master_translator -L reset_from_locked -L sys_pll -L hps_io -L fpga_interfaces -L rst_controller -L irq_mapper_001 -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L sys_clk -L sdram_master_avalon_interface_0 -L ready_output -L pushbutton -L onchip_memory2_0 -L jtag_uart_0 -L hps_0 -L done_input -L SDRAM -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
