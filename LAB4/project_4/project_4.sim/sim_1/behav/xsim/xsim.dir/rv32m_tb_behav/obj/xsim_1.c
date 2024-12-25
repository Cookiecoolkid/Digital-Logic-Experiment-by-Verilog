/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_287(char*, char *);
IKI_DLLESPEC extern void execute_1167(char*, char *);
IKI_DLLESPEC extern void execute_1168(char*, char *);
IKI_DLLESPEC extern void execute_1169(char*, char *);
IKI_DLLESPEC extern void execute_1170(char*, char *);
IKI_DLLESPEC extern void execute_1171(char*, char *);
IKI_DLLESPEC extern void execute_1172(char*, char *);
IKI_DLLESPEC extern void execute_1173(char*, char *);
IKI_DLLESPEC extern void execute_1174(char*, char *);
IKI_DLLESPEC extern void execute_285(char*, char *);
IKI_DLLESPEC extern void execute_1165(char*, char *);
IKI_DLLESPEC extern void execute_1166(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_60(char*, char *);
IKI_DLLESPEC extern void execute_462(char*, char *);
IKI_DLLESPEC extern void execute_463(char*, char *);
IKI_DLLESPEC extern void execute_464(char*, char *);
IKI_DLLESPEC extern void execute_465(char*, char *);
IKI_DLLESPEC extern void execute_466(char*, char *);
IKI_DLLESPEC extern void execute_293(char*, char *);
IKI_DLLESPEC extern void execute_458(char*, char *);
IKI_DLLESPEC extern void execute_459(char*, char *);
IKI_DLLESPEC extern void execute_460(char*, char *);
IKI_DLLESPEC extern void execute_461(char*, char *);
IKI_DLLESPEC extern void execute_294(char*, char *);
IKI_DLLESPEC extern void execute_375(char*, char *);
IKI_DLLESPEC extern void execute_295(char*, char *);
IKI_DLLESPEC extern void execute_312(char*, char *);
IKI_DLLESPEC extern void execute_313(char*, char *);
IKI_DLLESPEC extern void execute_296(char*, char *);
IKI_DLLESPEC extern void execute_297(char*, char *);
IKI_DLLESPEC extern void execute_298(char*, char *);
IKI_DLLESPEC extern void execute_308(char*, char *);
IKI_DLLESPEC extern void execute_309(char*, char *);
IKI_DLLESPEC extern void execute_310(char*, char *);
IKI_DLLESPEC extern void execute_311(char*, char *);
IKI_DLLESPEC extern void execute_62(char*, char *);
IKI_DLLESPEC extern void execute_116(char*, char *);
IKI_DLLESPEC extern void execute_636(char*, char *);
IKI_DLLESPEC extern void execute_637(char*, char *);
IKI_DLLESPEC extern void execute_638(char*, char *);
IKI_DLLESPEC extern void execute_639(char*, char *);
IKI_DLLESPEC extern void execute_640(char*, char *);
IKI_DLLESPEC extern void execute_174(char*, char *);
IKI_DLLESPEC extern void execute_228(char*, char *);
IKI_DLLESPEC extern void execute_815(char*, char *);
IKI_DLLESPEC extern void execute_985(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_987(char*, char *);
IKI_DLLESPEC extern void execute_988(char*, char *);
IKI_DLLESPEC extern void execute_989(char*, char *);
IKI_DLLESPEC extern void execute_283(char*, char *);
IKI_DLLESPEC extern void execute_284(char*, char *);
IKI_DLLESPEC extern void execute_990(char*, char *);
IKI_DLLESPEC extern void execute_1160(char*, char *);
IKI_DLLESPEC extern void execute_1162(char*, char *);
IKI_DLLESPEC extern void execute_1163(char*, char *);
IKI_DLLESPEC extern void execute_1164(char*, char *);
IKI_DLLESPEC extern void execute_289(char*, char *);
IKI_DLLESPEC extern void execute_290(char*, char *);
IKI_DLLESPEC extern void execute_291(char*, char *);
IKI_DLLESPEC extern void execute_292(char*, char *);
IKI_DLLESPEC extern void execute_1175(char*, char *);
IKI_DLLESPEC extern void execute_1176(char*, char *);
IKI_DLLESPEC extern void execute_1177(char*, char *);
IKI_DLLESPEC extern void execute_1178(char*, char *);
IKI_DLLESPEC extern void execute_1179(char*, char *);
IKI_DLLESPEC extern void execute_1180(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[70] = {(funcp)execute_2, (funcp)execute_287, (funcp)execute_1167, (funcp)execute_1168, (funcp)execute_1169, (funcp)execute_1170, (funcp)execute_1171, (funcp)execute_1172, (funcp)execute_1173, (funcp)execute_1174, (funcp)execute_285, (funcp)execute_1165, (funcp)execute_1166, (funcp)execute_6, (funcp)execute_60, (funcp)execute_462, (funcp)execute_463, (funcp)execute_464, (funcp)execute_465, (funcp)execute_466, (funcp)execute_293, (funcp)execute_458, (funcp)execute_459, (funcp)execute_460, (funcp)execute_461, (funcp)execute_294, (funcp)execute_375, (funcp)execute_295, (funcp)execute_312, (funcp)execute_313, (funcp)execute_296, (funcp)execute_297, (funcp)execute_298, (funcp)execute_308, (funcp)execute_309, (funcp)execute_310, (funcp)execute_311, (funcp)execute_62, (funcp)execute_116, (funcp)execute_636, (funcp)execute_637, (funcp)execute_638, (funcp)execute_639, (funcp)execute_640, (funcp)execute_174, (funcp)execute_228, (funcp)execute_815, (funcp)execute_985, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_987, (funcp)execute_988, (funcp)execute_989, (funcp)execute_283, (funcp)execute_284, (funcp)execute_990, (funcp)execute_1160, (funcp)execute_1162, (funcp)execute_1163, (funcp)execute_1164, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_1175, (funcp)execute_1176, (funcp)execute_1177, (funcp)execute_1178, (funcp)execute_1179, (funcp)execute_1180, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 70;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/rv32m_tb_behav/xsim.reloc",  (void **)funcTab, 70);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/rv32m_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/rv32m_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/rv32m_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/rv32m_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/rv32m_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
