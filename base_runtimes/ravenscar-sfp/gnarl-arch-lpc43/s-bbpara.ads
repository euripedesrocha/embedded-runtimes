with System.BB.Board_Parameters;
with System.BB.MCU_Parameters;
with System.LPC43;

package System.BB.Parameters is

   pragma No_Elaboration_Code_All;
   pragma Preelaborate (System.BB.Parameters);

   Clock_Frequency : constant := Board_Parameters.Main_Clock_Frequency;
   pragma Compile_Time_Error
     (Clock_Frequency not in System.LPC43.BASE_M4_CLK_Range,
        "bad Clock_Frequency value");
   Ticks_Per_Second : constant := Clock_Frequency;

   Has_FPU : constant Boolean := True;
   --  Set to true if core has a FPU

   ----------------
   -- Interrupts --
   ----------------

   --  These definitions are in this package in order to isolate target
   --  dependencies.
   Number_Of_Interrupt_ID : constant := MCU_Parameters.Number_Of_Interrupts;
   --  Number of interrupts (for both the interrupt controller and the
   --  Sys_Tick_Trap). This static constant is used to declare a type, and
   --  the handler table.

   Trap_Vectors : constant := 17;
   --  While on this target there is little difference between interrupts
   --  and traps, we consider the following traps:
   --
   --    Name                        Nr
   --
   --    Reset_Vector                 1
   --    NMI_Vector                   2
   --    Hard_Fault_Vector            3
   --    Mem_Manage_Vector            4
   --    Bus_Fault_Vector             5
   --    Usage_Fault_Vector           6
   --    SVC_Vector                  11
   --    Debug_Mon_Vector            12
   --    Pend_SV_Vector              14
   --    Sys_Tick_Vector             15
   --    Interrupt_Request_Vector    16
   --
   --  These trap vectors correspond to different low-level trap handlers in
   --  the run time. Note that as all interrupt requests (IRQs) will use the
   --  same interrupt wrapper, there is no benefit to consider using separate
   --  vectors for each.

   Context_Buffer_Capacity : constant := 10;
   --  The context buffer contains registers r4 .. r11 and the SP_process
   --  (PSP). The size is rounded up to an even number for alignment

   ------------
   -- Stacks --
   ------------

   Interrupt_Stack_Size : constant := 2 * 1024;
   --  Size of each of the interrupt stacks in bytes. While there nominally is
   --  an interrupt stack per interrupt priority, the entire space is used as a
   --  single stack.

   Interrupt_Sec_Stack_Size : constant := 128;
   --  Size of the secondary stack for interrupt handlers

   ----------
   -- CPUS --
   ----------

   Max_Number_Of_CPUs : constant := 1;
   --  Maximum number of CPUs

   Multiprocessor : constant Boolean := Max_Number_Of_CPUs /= 1;
   --  Are we on a multiprocessor board?

end System.BB.Parameters;
