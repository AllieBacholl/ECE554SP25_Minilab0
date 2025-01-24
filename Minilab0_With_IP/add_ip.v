// megafunction wizard: %LPM_ADD_SUB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_ADD_SUB 

// ============================================================
// File Name: add_ip.v
// Megafunction Name(s):
// 			LPM_ADD_SUB
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 23.1std.0 Build 991 11/28/2023 SC Lite Edition
// ************************************************************


//Copyright (C) 2023  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module add_ip (
	aclr,
	clken,
	clock,
	dataa,
	datab,
	result);

	input	  aclr;
	input	  clken;
	input	  clock;
	input	[23:0]  dataa;
	input	[23:0]  datab;
	output	[23:0]  result;

	wire [23:0] sub_wire0;
	wire [23:0] result = sub_wire0[23:0];

	lpm_add_sub	LPM_ADD_SUB_component (
				.aclr (aclr),
				.clken (clken),
				.clock (clock),
				.dataa (dataa),
				.datab (datab),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.add_sub (),
				.cin (),
				.cout (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		LPM_ADD_SUB_component.lpm_direction = "ADD",
		LPM_ADD_SUB_component.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO",
		LPM_ADD_SUB_component.lpm_pipeline = 1,
		LPM_ADD_SUB_component.lpm_representation = "UNSIGNED",
		LPM_ADD_SUB_component.lpm_type = "LPM_ADD_SUB",
		LPM_ADD_SUB_component.lpm_width = 24;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: Function NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: Latency NUMERIC "1"
// Retrieval info: PRIVATE: Overflow NUMERIC "0"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "0"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "0"
// Retrieval info: PRIVATE: aclr NUMERIC "1"
// Retrieval info: PRIVATE: clken NUMERIC "1"
// Retrieval info: PRIVATE: nBit NUMERIC "24"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "24"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
// Retrieval info: USED_PORT: clken 0 0 0 0 INPUT NODEFVAL "clken"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 24 0 INPUT NODEFVAL "dataa[23..0]"
// Retrieval info: USED_PORT: datab 0 0 24 0 INPUT NODEFVAL "datab[23..0]"
// Retrieval info: USED_PORT: result 0 0 24 0 OUTPUT NODEFVAL "result[23..0]"
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: CONNECT: @clken 0 0 0 0 clken 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 24 0 dataa 0 0 24 0
// Retrieval info: CONNECT: @datab 0 0 24 0 datab 0 0 24 0
// Retrieval info: CONNECT: result 0 0 24 0 @result 0 0 24 0
// Retrieval info: GEN_FILE: TYPE_NORMAL add_ip.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_ip.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_ip.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_ip.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_ip_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_ip_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
