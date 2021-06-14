from selenium import webdriver
from percy import percy_snapshot

browser = webdriver.Chrome()
browser.get('https://www.somkiat.cc')
browser.implicitly_wait(10)
percy_snapshot(browser, 'Home Page')

