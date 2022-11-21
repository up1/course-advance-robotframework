*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/search.robot
Resource    ../pages/search_result.robot

*** Test Cases ***
ค้นหาบอลโลกเจอใน google
	search.เข้าไปยังหน้าค้นหา
	search.ค้นหา   บอลโลก
	search_result.ต้องเจอข้อมูลของ   บอลโลก

ค้นหา other เจอใน google
	search.เข้าไปยังหน้าค้นหา
	search.ค้นหา   other
	search_result.ต้องเจอข้อมูลของ   other
