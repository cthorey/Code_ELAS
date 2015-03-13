#!/bin/bash
cd "$(dirname "$0")"
Compilateur -o Module_Numerical_Integration.o -c Module_Numerical_Integration.f90
Compilateur -o Module_Complementaire.o -c Module_Complementaire.f90
Compilateur -o Module_Conservation.o -c Module_Conservation.f90
Compilateur -o Module_Init_tmp.o -c Module_Init_tmp.f90
Compilateur -o Module_Output.o -c Module_Output.f90
Compilateur -o Module_Thermal_IntE_Newton_Bercovici.o -c Module_Thermal_IntE_Newton_Bercovici.f90
Compilateur -o Module_Thermal_Skin_GFD_Bercovici.o -c Module_Thermal_Skin_GFD_Bercovici.f90
Compilateur -o Module_Thermal_Skin_Newton_Arrhenius.o -c Module_Thermal_Skin_Newton_Arrhenius.f90
Compilateur -o Module_Thermal_Skin_Newton_Bercovici.o -c Module_Thermal_Skin_Newton_Bercovici.f90
Compilateur -o Module_Thermal_Skin_Newton_Roscoe.o -c Module_Thermal_Skin_Newton_Roscoe.f90
Compilateur -o Module_Thermal.o -c Module_Thermal.f90
Compilateur -o Module_Thickness_Skin_GFD_Bercovici.o -c Module_Thickness_Skin_GFD_Bercovici.f90
Compilateur -o Module_Thickness_Skin_Newton_Arrhenius.o -c Module_Thickness_Skin_Newton_Arrhenius.f90
Compilateur -o Module_Thickness_Skin_Newton_Bercovici.o -c Module_Thickness_Skin_Newton_Bercovici.f90
Compilateur -o Module_Thickness_Skin_Newton_Roscoe.o -c Module_Thickness_Skin_Newton_Roscoe.f90
Compilateur -o Module_Thickness.o -c Module_Thickness.f90
Compilateur -o main.o -c main.f90
Compilateur -o Module_Surface.o -c Module_Surface.f90
Compilateur -o run main.o Module_Complementaire.o Module_Conservation.o Module_Init_tmp.o Module_Numerical_Integration.o Module_Output.o Module_Surface.o Module_Thermal.o Module_Thermal_IntE_Newton_Bercovici.o Module_Thermal_Skin_GFD_Bercovici.o Module_Thermal_Skin_Newton_Arrhenius.o Module_Thermal_Skin_Newton_Bercovici.o Module_Thermal_Skin_Newton_Roscoe.o Module_Thickness.o Module_Thickness_Skin_GFD_Bercovici.o Module_Thickness_Skin_Newton_Arrhenius.o Module_Thickness_Skin_Newton_Bercovici.o Module_Thickness_Skin_Newton_Roscoe.o
rm *.o
rm *.mod

