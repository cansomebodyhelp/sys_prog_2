cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)


set(SOURCE_FILES
    calculator.c
    main.c
)


add_library(calculator STATIC ${SOURCE_FILES})


add_executable(calculator_main main.c)


target_link_libraries(calculator_main calculator)
