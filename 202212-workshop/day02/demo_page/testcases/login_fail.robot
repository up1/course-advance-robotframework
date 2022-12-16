*** Settings ***
Library      SeleniumLibrary
Resource     ../pages/login.robot
Resource     ../pages/error.robot
Suite Setup   Open login page

*** Test Cases ***
Login fail naja
	[Template]  Flow Login fail
		${EMPTY}   mode
		demo	   ${EMPTY}	

*** Keywords ***
Flow Login fail
	[Arguments]   ${user}   ${password}
    # ผู้ใช้งานทำการ login
	login.Open
	login.Check
	login.Submit   ${user}   ${password}
	# ตรวจสอบผลว่าต้อง error นะ
	error.Check Error

Open login page
	Open Browser   http://139.59.97.96:7272/   gc
	Maximize Browser Window