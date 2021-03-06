!-----------------------BEGIN NOTICE -- DO NOT EDIT-----------------------
! NASA GSFC Land Data Toolkit (LDT) V1.0
!-------------------------END NOTICE -- DO NOT EDIT-----------------------
  subroutine LDT_init_NUWRFpreproc

    use LDT_domainMod
    use LDT_paramProcMod
    use LDT_NUWRFprocMod, only : LDT_NUWRFprocInit
    use LDT_logMod

    write(LDT_logunit,*) "----------------------------------"
    write(LDT_logunit,*) " Start of LDT parameter processing "
    write(LDT_logunit,*) "----------------------------------"
    
    call LDT_setDomainSpecs
!    call LDT_paramProcInit
    call LDT_paramProcConfig 
    call LDT_NUWRFprocInit
!    call LDT_domainInit
    call LDT_flush(LDT_logunit)

  end subroutine LDT_init_NUWRFpreproc
  
