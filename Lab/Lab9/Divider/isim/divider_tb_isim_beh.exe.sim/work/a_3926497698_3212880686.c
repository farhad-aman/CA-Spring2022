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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/farhad/Desktop/Lab9/Divider/divider.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3926497698_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = (8 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2868);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2800);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3926497698_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = (8 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2904);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2808);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3926497698_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 2940);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 2816);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2940);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3926497698_3212880686_p_3(char *t0)
{
    char t14[16];
    char t31[16];
    char t32[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t33;
    unsigned int t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 660U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2824);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    if (t9 == 0)
        goto LAB9;

LAB15:    if (t9 == 1)
        goto LAB10;

LAB16:    if (t9 == 2)
        goto LAB11;

LAB17:    if (t9 == 3)
        goto LAB12;

LAB18:    if (t9 == 4)
        goto LAB13;

LAB19:
LAB14:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t14 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t27 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t14);
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t28 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t8);
    t1 = (t27 < t28);
    if (t1 != 0)
        goto LAB54;

LAB56:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t31 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t14, t2, t31, t10, t8);
    t15 = (t14 + 12U);
    t26 = *((unsigned int *)t15);
    t29 = (1U * t26);
    t1 = (5U != t29);
    if (t1 == 1)
        goto LAB57;

LAB58:    t16 = (t0 + 2976);
    t19 = (t16 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_delta(t16, 0U, 5U, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2976);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 8U, 1, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t2);

LAB55:
LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 592U);
    t10 = *((char **)t4);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB21;

LAB23:
LAB22:    goto LAB8;

LAB10:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t14 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t27 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t14);
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t28 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t8);
    t1 = (t27 < t28);
    if (t1 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3084);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB29:    goto LAB8;

LAB11:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t14 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t27 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t14);
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t28 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t8);
    t1 = (t27 < t28);
    if (t1 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t31 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t14, t2, t31, t10, t8);
    t15 = (t14 + 12U);
    t26 = *((unsigned int *)t15);
    t29 = (1U * t26);
    t1 = (5U != t29);
    if (t1 == 1)
        goto LAB38;

LAB39:    t16 = (t0 + 2976);
    t19 = (t16 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_delta(t16, 0U, 5U, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2976);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 8U, 1, 0LL);

LAB34:    goto LAB8;

LAB12:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t14 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t27 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t14);
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t28 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t8);
    t1 = (t27 < t28);
    if (t1 != 0)
        goto LAB40;

LAB42:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t31 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t14, t2, t31, t10, t8);
    t15 = (t14 + 12U);
    t26 = *((unsigned int *)t15);
    t29 = (1U * t26);
    t1 = (5U != t29);
    if (t1 == 1)
        goto LAB45;

LAB46:    t16 = (t0 + 2976);
    t19 = (t16 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_delta(t16, 0U, 5U, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2976);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 8U, 1, 0LL);

LAB41:    goto LAB8;

LAB13:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t14 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t27 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t14);
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t28 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t10, t8);
    t1 = (t27 < t28);
    if (t1 != 0)
        goto LAB47;

LAB49:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t17 = (8 - 8);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t2 = (t4 + t25);
    t5 = (t31 + 0U);
    t8 = (t5 + 0U);
    *((int *)t8) = 8;
    t8 = (t5 + 4U);
    *((int *)t8) = 4;
    t8 = (t5 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 8);
    t26 = (t9 * -1);
    t26 = (t26 + 1);
    t8 = (t5 + 12U);
    *((unsigned int *)t8) = t26;
    t8 = (t0 + 1328U);
    t10 = *((char **)t8);
    t8 = (t0 + 5100U);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t14, t2, t31, t10, t8);
    t15 = (t14 + 12U);
    t26 = *((unsigned int *)t15);
    t29 = (1U * t26);
    t1 = (5U != t29);
    if (t1 == 1)
        goto LAB52;

LAB53:    t16 = (t0 + 2976);
    t19 = (t16 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_delta(t16, 0U, 5U, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2976);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 8U, 1, 0LL);

LAB48:    goto LAB8;

LAB20:;
LAB21:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 868U);
    t13 = *((char **)t4);
    t15 = ((IEEE_P_2592010699) + 2332);
    t16 = (t0 + 5052U);
    t4 = xsi_base_array_concat(t4, t14, t15, (char)99, (unsigned char)2, (char)97, t13, t16, (char)101);
    t17 = (1U + 8U);
    t18 = (9U != t17);
    if (t18 == 1)
        goto LAB24;

LAB25:    t19 = (t0 + 2976);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t4, 9U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t5 = ((IEEE_P_2592010699) + 2332);
    t8 = (t0 + 5036U);
    t2 = xsi_base_array_concat(t2, t14, t5, (char)99, (unsigned char)2, (char)97, t4, t8, (char)101);
    t17 = (1U + 4U);
    t1 = (5U != t17);
    if (t1 == 1)
        goto LAB26;

LAB27:    t10 = (t0 + 3012);
    t13 = (t10 + 32U);
    t15 = *((char **)t13);
    t16 = (t15 + 40U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 5U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((int *)t10) = 1;
    xsi_driver_first_trans_fast(t2);
    goto LAB22;

LAB24:    xsi_size_not_matching(9U, t17, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(5U, t17, 0);
    goto LAB27;

LAB28:    xsi_set_current_line(65, ng0);
    t13 = (t0 + 1420U);
    t15 = *((char **)t13);
    t26 = (8 - 7);
    t29 = (t26 * 1U);
    t30 = (0 + t29);
    t13 = (t15 + t30);
    t19 = ((IEEE_P_2592010699) + 2332);
    t20 = (t32 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 7;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t33 = (0 - 7);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t34;
    t16 = xsi_base_array_concat(t16, t31, t19, (char)97, t13, t32, (char)99, (unsigned char)2, (char)101);
    t34 = (8U + 1U);
    t3 = (9U != t34);
    if (t3 == 1)
        goto LAB31;

LAB32:    t21 = (t0 + 2976);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t35 = (t23 + 40U);
    t36 = *((char **)t35);
    memcpy(t36, t16, 9U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((int *)t10) = 2;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB31:    xsi_size_not_matching(9U, t34, 0);
    goto LAB32;

LAB33:    xsi_set_current_line(73, ng0);
    t13 = (t0 + 1420U);
    t15 = *((char **)t13);
    t26 = (8 - 7);
    t29 = (t26 * 1U);
    t30 = (0 + t29);
    t13 = (t15 + t30);
    t19 = ((IEEE_P_2592010699) + 2332);
    t20 = (t32 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 7;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t33 = (0 - 7);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t34;
    t16 = xsi_base_array_concat(t16, t31, t19, (char)97, t13, t32, (char)99, (unsigned char)2, (char)101);
    t34 = (8U + 1U);
    t3 = (9U != t34);
    if (t3 == 1)
        goto LAB36;

LAB37:    t21 = (t0 + 2976);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t35 = (t23 + 40U);
    t36 = *((char **)t35);
    memcpy(t36, t16, 9U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((int *)t10) = 3;
    xsi_driver_first_trans_fast(t2);
    goto LAB34;

LAB36:    xsi_size_not_matching(9U, t34, 0);
    goto LAB37;

LAB38:    xsi_size_not_matching(5U, t29, 0);
    goto LAB39;

LAB40:    xsi_set_current_line(81, ng0);
    t13 = (t0 + 1420U);
    t15 = *((char **)t13);
    t26 = (8 - 7);
    t29 = (t26 * 1U);
    t30 = (0 + t29);
    t13 = (t15 + t30);
    t19 = ((IEEE_P_2592010699) + 2332);
    t20 = (t32 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 7;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t33 = (0 - 7);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t34;
    t16 = xsi_base_array_concat(t16, t31, t19, (char)97, t13, t32, (char)99, (unsigned char)2, (char)101);
    t34 = (8U + 1U);
    t3 = (9U != t34);
    if (t3 == 1)
        goto LAB43;

LAB44:    t21 = (t0 + 2976);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t35 = (t23 + 40U);
    t36 = *((char **)t35);
    memcpy(t36, t16, 9U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((int *)t10) = 4;
    xsi_driver_first_trans_fast(t2);
    goto LAB41;

LAB43:    xsi_size_not_matching(9U, t34, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(5U, t29, 0);
    goto LAB46;

LAB47:    xsi_set_current_line(89, ng0);
    t13 = (t0 + 1420U);
    t15 = *((char **)t13);
    t26 = (8 - 7);
    t29 = (t26 * 1U);
    t30 = (0 + t29);
    t13 = (t15 + t30);
    t19 = ((IEEE_P_2592010699) + 2332);
    t20 = (t32 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 7;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t33 = (0 - 7);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t34;
    t16 = xsi_base_array_concat(t16, t31, t19, (char)97, t13, t32, (char)99, (unsigned char)2, (char)101);
    t34 = (8U + 1U);
    t3 = (9U != t34);
    if (t3 == 1)
        goto LAB50;

LAB51:    t21 = (t0 + 2976);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t35 = (t23 + 40U);
    t36 = *((char **)t35);
    memcpy(t36, t16, 9U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t10 = *((char **)t8);
    *((int *)t10) = 5;
    xsi_driver_first_trans_fast(t2);
    goto LAB48;

LAB50:    xsi_size_not_matching(9U, t34, 0);
    goto LAB51;

LAB52:    xsi_size_not_matching(5U, t29, 0);
    goto LAB53;

LAB54:    xsi_set_current_line(97, ng0);
    t13 = (t0 + 3048);
    t15 = (t13 + 32U);
    t16 = *((char **)t15);
    t19 = (t16 + 40U);
    t20 = *((char **)t19);
    *((int *)t20) = 0;
    xsi_driver_first_trans_fast(t13);
    goto LAB55;

LAB57:    xsi_size_not_matching(5U, t29, 0);
    goto LAB58;

}


extern void work_a_3926497698_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3926497698_3212880686_p_0,(void *)work_a_3926497698_3212880686_p_1,(void *)work_a_3926497698_3212880686_p_2,(void *)work_a_3926497698_3212880686_p_3};
	xsi_register_didat("work_a_3926497698_3212880686", "isim/divider_tb_isim_beh.exe.sim/work/a_3926497698_3212880686.didat");
	xsi_register_executes(pe);
}
