/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/newcpu3.0/Extender.v";
static unsigned int ng1[] = {65535U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Cont_26_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t16[8];
    char t19[8];
    char t20[8];
    char t22[8];
    char t51[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t47 = *((unsigned int *)t4);
    t48 = (~(t47));
    t49 = *((unsigned int *)t12);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t51, 8);

LAB16:    t54 = (t0 + 2928);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t3, 8);
    xsi_driver_vfirst_trans(t54, 0, 31);
    t59 = (t0 + 2848);
    *((int *)t59) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t17 = (t0 + 1048U);
    t18 = *((char **)t17);
    t17 = (t0 + 1048U);
    t21 = *((char **)t17);
    memset(t22, 0, 8);
    t17 = (t22 + 4);
    t23 = (t21 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 15);
    t26 = (t25 & 1);
    *((unsigned int *)t22) = t26;
    t27 = *((unsigned int *)t23);
    t28 = (t27 >> 15);
    t29 = (t28 & 1);
    *((unsigned int *)t17) = t29;
    memset(t20, 0, 8);
    t30 = (t22 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (~(t31));
    t33 = *((unsigned int *)t22);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t30) != 0)
        goto LAB19;

LAB20:    t37 = (t20 + 4);
    t38 = *((unsigned int *)t20);
    t39 = *((unsigned int *)t37);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB21;

LAB22:    t42 = *((unsigned int *)t20);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t37) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t20) > 0)
        goto LAB27;

LAB28:    memcpy(t19, t46, 8);

LAB29:    xsi_vlogtype_concat(t16, 32, 32, 2U, t19, 16, t18, 16);
    goto LAB9;

LAB10:    t52 = (t0 + 1048U);
    t53 = *((char **)t52);
    t52 = ((char*)((ng2)));
    xsi_vlogtype_concat(t51, 32, 32, 2U, t52, 16, t53, 16);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t51, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t20) = 1;
    goto LAB20;

LAB19:    t36 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB20;

LAB21:    t41 = ((char*)((ng1)));
    goto LAB22;

LAB23:    t46 = ((char*)((ng2)));
    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t19, 16, t41, 16, t46, 16);
    goto LAB29;

LAB27:    memcpy(t19, t41, 8);
    goto LAB29;

}


extern void work_m_00000000001663105761_2664993444_init()
{
	static char *pe[] = {(void *)Cont_26_0};
	xsi_register_didat("work_m_00000000001663105761_2664993444", "isim/t_CP_isim_beh.exe.sim/work/m_00000000001663105761_2664993444.didat");
	xsi_register_executes(pe);
}
