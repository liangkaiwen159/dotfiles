import requests, time
from selenium import webdriver
import ast
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By


def login():
    path = Service("D:\SOFTWARE\chrome\App\chromedriver.exe")
    ch_options = webdriver.ChromeOptions()
    #为Chrome配置无头模式
    ch_options.add_argument("--headless")
    ch_options.add_argument('--no-sandbox')
    ch_options.add_argument('--disable-gpu')
    ch_options.add_argument('--disable-dev-shm-usage')
    ch_options.add_argument("--disable-software-rasterizer")
    ch_options.add_argument('--log-level=3')

    driver = webdriver.Chrome(service=path, options=ch_options)
    driver.get('http://10.0.0.55')
    cur_time = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
    # time.sleep(10)
    try:
        login = driver.find_element(By.ID, 'login')
        driver.find_element(By.ID, 'username').send_keys('7220190100')
        driver.find_element(By.ID, 'password').send_keys('liang19970219')
        login.click()
        time.sleep(5)
        driver.quit()
        print(f'{cur_time} login success')
    except Exception:
        print(f'{cur_time} do not need login again')


if __name__ == '__main__':
    login()