	lab3_p2_qsys u0 (
		.done_in_export                    (<connected-to-done_in_export>),                    //                  done_in.export
		.memory_mem_a                      (<connected-to-memory_mem_a>),                      //                   memory.mem_a
		.memory_mem_ba                     (<connected-to-memory_mem_ba>),                     //                         .mem_ba
		.memory_mem_ck                     (<connected-to-memory_mem_ck>),                     //                         .mem_ck
		.memory_mem_ck_n                   (<connected-to-memory_mem_ck_n>),                   //                         .mem_ck_n
		.memory_mem_cke                    (<connected-to-memory_mem_cke>),                    //                         .mem_cke
		.memory_mem_cs_n                   (<connected-to-memory_mem_cs_n>),                   //                         .mem_cs_n
		.memory_mem_ras_n                  (<connected-to-memory_mem_ras_n>),                  //                         .mem_ras_n
		.memory_mem_cas_n                  (<connected-to-memory_mem_cas_n>),                  //                         .mem_cas_n
		.memory_mem_we_n                   (<connected-to-memory_mem_we_n>),                   //                         .mem_we_n
		.memory_mem_reset_n                (<connected-to-memory_mem_reset_n>),                //                         .mem_reset_n
		.memory_mem_dq                     (<connected-to-memory_mem_dq>),                     //                         .mem_dq
		.memory_mem_dqs                    (<connected-to-memory_mem_dqs>),                    //                         .mem_dqs
		.memory_mem_dqs_n                  (<connected-to-memory_mem_dqs_n>),                  //                         .mem_dqs_n
		.memory_mem_odt                    (<connected-to-memory_mem_odt>),                    //                         .mem_odt
		.memory_mem_dm                     (<connected-to-memory_mem_dm>),                     //                         .mem_dm
		.memory_oct_rzqin                  (<connected-to-memory_oct_rzqin>),                  //                         .oct_rzqin
		.pushbutton_export                 (<connected-to-pushbutton_export>),                 //               pushbutton.export
		.ready_out_export                  (<connected-to-ready_out_export>),                  //                ready_out.export
		.sdram_clk_clk                     (<connected-to-sdram_clk_clk>),                     //                sdram_clk.clk
		.sdram_master_conduit_end_done     (<connected-to-sdram_master_conduit_end_done>),     // sdram_master_conduit_end.done
		.sdram_master_conduit_end_ready    (<connected-to-sdram_master_conduit_end_ready>),    //                         .ready
		.sdram_master_conduit_end_tohexled (<connected-to-sdram_master_conduit_end_tohexled>), //                         .tohexled
		.sdram_wire_addr                   (<connected-to-sdram_wire_addr>),                   //               sdram_wire.addr
		.sdram_wire_ba                     (<connected-to-sdram_wire_ba>),                     //                         .ba
		.sdram_wire_cas_n                  (<connected-to-sdram_wire_cas_n>),                  //                         .cas_n
		.sdram_wire_cke                    (<connected-to-sdram_wire_cke>),                    //                         .cke
		.sdram_wire_cs_n                   (<connected-to-sdram_wire_cs_n>),                   //                         .cs_n
		.sdram_wire_dq                     (<connected-to-sdram_wire_dq>),                     //                         .dq
		.sdram_wire_dqm                    (<connected-to-sdram_wire_dqm>),                    //                         .dqm
		.sdram_wire_ras_n                  (<connected-to-sdram_wire_ras_n>),                  //                         .ras_n
		.sdram_wire_we_n                   (<connected-to-sdram_wire_we_n>),                   //                         .we_n
		.system_ref_clk_clk                (<connected-to-system_ref_clk_clk>),                //           system_ref_clk.clk
		.system_ref_reset_reset            (<connected-to-system_ref_reset_reset>)             //         system_ref_reset.reset
	);

