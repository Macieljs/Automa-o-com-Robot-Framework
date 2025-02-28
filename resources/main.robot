*** Settings ***
Library     SeleniumLibrary

#Data
Resource     data/geral.robot
Resource     data/registro.robot
#Shared
Resource     shared/setup_teardown.robot


#Pages

Resource    pages/home_page.robot
Resource    pages/registrar.robot
