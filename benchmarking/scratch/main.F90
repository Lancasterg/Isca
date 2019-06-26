program main
    implicit none
    integer :: number
    integer :: check_nml_error
    number = check_nml_error(10, 'hello')

    print *, number

end program


INTEGER FUNCTION check_nml_error(IOSTAT, NML_NAME)
    INTEGER, INTENT(in) :: IOSTAT
    CHARACTER(len=*), INTENT(in) :: NML_NAME
    CHARACTER(len=256) :: err_str

    
    check_nml_error = IOSTAT ! the return value? 

    return
END FUNCTION
