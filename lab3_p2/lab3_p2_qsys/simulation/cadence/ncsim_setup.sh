
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
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="lab3_p2_qsys"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="/apps/Altera/15.0/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/border/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router/
mkdir -p ./libraries/avalon_st_adapter_001/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter/
mkdir -p ./libraries/rsp_mux_002/
mkdir -p ./libraries/rsp_demux_001/
mkdir -p ./libraries/cmd_mux_001/
mkdir -p ./libraries/cmd_demux_002/
mkdir -p ./libraries/SDRAM_s1_burst_adapter/
mkdir -p ./libraries/hps_0_h2f_axi_master_wr_limiter/
mkdir -p ./libraries/router_004/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/SDRAM_s1_agent_rsp_fifo/
mkdir -p ./libraries/SDRAM_s1_agent/
mkdir -p ./libraries/sdram_master_avalon_interface_0_avalon_master_agent/
mkdir -p ./libraries/hps_0_h2f_axi_master_agent/
mkdir -p ./libraries/SDRAM_s1_translator/
mkdir -p ./libraries/sdram_master_avalon_interface_0_avalon_master_translator/
mkdir -p ./libraries/reset_from_locked/
mkdir -p ./libraries/sys_pll/
mkdir -p ./libraries/hps_io/
mkdir -p ./libraries/fpga_interfaces/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper_001/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_1/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/sys_clk/
mkdir -p ./libraries/sdram_master_avalon_interface_0/
mkdir -p ./libraries/ready_output/
mkdir -p ./libraries/pushbutton/
mkdir -p ./libraries/onchip_memory2_0/
mkdir -p ./libraries/jtag_uart_0/
mkdir -p ./libraries/hps_0/
mkdir -p ./libraries/done_input/
mkdir -p ./libraries/SDRAM/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/lab3_p2_qsys_onchip_memory2_0.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                        -work altera_common_sv_packages                                -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                 -work altera_common_sv_packages                                -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                        -work altera_common_sv_packages                                -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -work error_adapter_0                                          -cdslib ./cds_libs/error_adapter_0.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -work error_adapter_0                                          -cdslib ./cds_libs/error_adapter_0.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                           -work border                                                   -cdslib ./cds_libs/border.cds.lib                                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                         -work border                                                   -cdslib ./cds_libs/border.cds.lib                                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                           -work border                                                   -cdslib ./cds_libs/border.cds.lib                                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                           -work border                                                   -cdslib ./cds_libs/border.cds.lib                                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_hps_io_border_memory.sv"                              -work border                                                   -cdslib ./cds_libs/border.cds.lib                                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_hps_io_border.sv"                                     -work border                                                   -cdslib ./cds_libs/border.cds.lib                                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -work rsp_mux                                                  -cdslib ./cds_libs/rsp_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_rsp_mux.sv"                               -work rsp_mux                                                  -cdslib ./cds_libs/rsp_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_rsp_demux.sv"                             -work rsp_demux                                                -cdslib ./cds_libs/rsp_demux.cds.lib                                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -work cmd_mux                                                  -cdslib ./cds_libs/cmd_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_cmd_mux.sv"                               -work cmd_mux                                                  -cdslib ./cds_libs/cmd_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_cmd_demux.sv"                             -work cmd_demux                                                -cdslib ./cds_libs/cmd_demux.cds.lib                                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_router_002.sv"                            -work router_002                                               -cdslib ./cds_libs/router_002.cds.lib                                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1_router.sv"                                -work router                                                   -cdslib ./cds_libs/router.cds.lib                                                  
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter_001.v"                  -work avalon_st_adapter_001                                    -cdslib ./cds_libs/avalon_st_adapter_001.cds.lib                                   
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_avalon_st_adapter.v"                      -work avalon_st_adapter                                        -cdslib ./cds_libs/avalon_st_adapter.cds.lib                                       
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                          -work hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter    -cdslib ./cds_libs/hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter.cds.lib   
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                      -work hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter    -cdslib ./cds_libs/hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter.cds.lib   
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                     -work hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter    -cdslib ./cds_libs/hps_0_h2f_axi_master_wr_to_SDRAM_s1_cmd_width_adapter.cds.lib   
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -work rsp_mux_002                                              -cdslib ./cds_libs/rsp_mux_002.cds.lib                                             
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_mux_002.sv"                           -work rsp_mux_002                                              -cdslib ./cds_libs/rsp_mux_002.cds.lib                                             
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -work rsp_mux                                                  -cdslib ./cds_libs/rsp_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_mux.sv"                               -work rsp_mux                                                  -cdslib ./cds_libs/rsp_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_demux_001.sv"                         -work rsp_demux_001                                            -cdslib ./cds_libs/rsp_demux_001.cds.lib                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_rsp_demux.sv"                             -work rsp_demux                                                -cdslib ./cds_libs/rsp_demux.cds.lib                                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -work cmd_mux_001                                              -cdslib ./cds_libs/cmd_mux_001.cds.lib                                             
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_mux_001.sv"                           -work cmd_mux_001                                              -cdslib ./cds_libs/cmd_mux_001.cds.lib                                             
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                             -work cmd_mux                                                  -cdslib ./cds_libs/cmd_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_mux.sv"                               -work cmd_mux                                                  -cdslib ./cds_libs/cmd_mux.cds.lib                                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_demux_002.sv"                         -work cmd_demux_002                                            -cdslib ./cds_libs/cmd_demux_002.cds.lib                                           
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_cmd_demux.sv"                             -work cmd_demux                                                -cdslib ./cds_libs/cmd_demux.cds.lib                                               
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                          -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                   -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                     -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                      -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                          -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                          -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                       -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                      -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                      -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                        -work SDRAM_s1_burst_adapter                                   -cdslib ./cds_libs/SDRAM_s1_burst_adapter.cds.lib                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                        -work hps_0_h2f_axi_master_wr_limiter                          -cdslib ./cds_libs/hps_0_h2f_axi_master_wr_limiter.cds.lib                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                         -work hps_0_h2f_axi_master_wr_limiter                          -cdslib ./cds_libs/hps_0_h2f_axi_master_wr_limiter.cds.lib                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                 -work hps_0_h2f_axi_master_wr_limiter                          -cdslib ./cds_libs/hps_0_h2f_axi_master_wr_limiter.cds.lib                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                        -work hps_0_h2f_axi_master_wr_limiter                          -cdslib ./cds_libs/hps_0_h2f_axi_master_wr_limiter.cds.lib                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router_004.sv"                            -work router_004                                               -cdslib ./cds_libs/router_004.cds.lib                                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router_003.sv"                            -work router_003                                               -cdslib ./cds_libs/router_003.cds.lib                                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router_002.sv"                            -work router_002                                               -cdslib ./cds_libs/router_002.cds.lib                                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0_router.sv"                                -work router                                                   -cdslib ./cds_libs/router.cds.lib                                                  
  ncvlog     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                 -work SDRAM_s1_agent_rsp_fifo                                  -cdslib ./cds_libs/SDRAM_s1_agent_rsp_fifo.cds.lib                                 
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                            -work SDRAM_s1_agent                                           -cdslib ./cds_libs/SDRAM_s1_agent.cds.lib                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                     -work SDRAM_s1_agent                                           -cdslib ./cds_libs/SDRAM_s1_agent.cds.lib                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                           -work sdram_master_avalon_interface_0_avalon_master_agent      -cdslib ./cds_libs/sdram_master_avalon_interface_0_avalon_master_agent.cds.lib     
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                                          -work hps_0_h2f_axi_master_agent                               -cdslib ./cds_libs/hps_0_h2f_axi_master_agent.cds.lib                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                      -work hps_0_h2f_axi_master_agent                               -cdslib ./cds_libs/hps_0_h2f_axi_master_agent.cds.lib                              
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                       -work SDRAM_s1_translator                                      -cdslib ./cds_libs/SDRAM_s1_translator.cds.lib                                     
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                      -work sdram_master_avalon_interface_0_avalon_master_translator -cdslib ./cds_libs/sdram_master_avalon_interface_0_avalon_master_translator.cds.lib
  ncvlog     "$QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v"                             -work reset_from_locked                                        -cdslib ./cds_libs/reset_from_locked.cds.lib                                       
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_sys_clk_sys_pll.vo"                                         -work sys_pll                                                  -cdslib ./cds_libs/sys_pll.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_hps_io.v"                                             -work hps_io                                                   -cdslib ./cds_libs/hps_io.cds.lib                                                  
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                           -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                                                    -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                                       -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                                       -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                                        -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                         -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                           -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                           -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0_fpga_interfaces.sv"                                   -work fpga_interfaces                                          -cdslib ./cds_libs/fpga_interfaces.cds.lib                                         
  ncvlog     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                               -work rst_controller                                           -cdslib ./cds_libs/rst_controller.cds.lib                                          
  ncvlog     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                             -work rst_controller                                           -cdslib ./cds_libs/rst_controller.cds.lib                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_irq_mapper_001.sv"                                          -work irq_mapper_001                                           -cdslib ./cds_libs/irq_mapper_001.cds.lib                                          
  ncvlog -sv "$QSYS_SIMDIR/submodules/lab3_p2_qsys_irq_mapper.sv"                                              -work irq_mapper                                               -cdslib ./cds_libs/irq_mapper.cds.lib                                              
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_1.v"                                        -work mm_interconnect_1                                        -cdslib ./cds_libs/mm_interconnect_1.cds.lib                                       
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_mm_interconnect_0.v"                                        -work mm_interconnect_0                                        -cdslib ./cds_libs/mm_interconnect_0.cds.lib                                       
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_sys_clk.v"                                                  -work sys_clk                                                  -cdslib ./cds_libs/sys_clk.cds.lib                                                 
  ncvlog     "$QSYS_SIMDIR/submodules/sdram_master.v"                                                          -work sdram_master_avalon_interface_0                          -cdslib ./cds_libs/sdram_master_avalon_interface_0.cds.lib                         
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_ready_output.v"                                             -work ready_output                                             -cdslib ./cds_libs/ready_output.cds.lib                                            
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_pushbutton.v"                                               -work pushbutton                                               -cdslib ./cds_libs/pushbutton.cds.lib                                              
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_onchip_memory2_0.v"                                         -work onchip_memory2_0                                         -cdslib ./cds_libs/onchip_memory2_0.cds.lib                                        
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_jtag_uart_0.v"                                              -work jtag_uart_0                                              -cdslib ./cds_libs/jtag_uart_0.cds.lib                                             
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_hps_0.v"                                                    -work hps_0                                                    -cdslib ./cds_libs/hps_0.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_done_input.v"                                               -work done_input                                               -cdslib ./cds_libs/done_input.cds.lib                                              
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_SDRAM.v"                                                    -work SDRAM                                                    -cdslib ./cds_libs/SDRAM.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/submodules/lab3_p2_qsys_SDRAM_test_component.v"                                     -work SDRAM                                                    -cdslib ./cds_libs/SDRAM.cds.lib                                                   
  ncvlog     "$QSYS_SIMDIR/lab3_p2_qsys.v"                                                                                                                                                                                                                       
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
