from flask import session
import pymysql.cursors
from  datetime import datetime


def get_db():
    db = pymysql.connect(
        host='localhost',
        user='a12345',
        password='PASS',
        database='db_a12345',
        charset='utf8mb4',
        cursorclass=pymysql.cursors.DictCursor)
    return db




def get_products(cat_id = None):
    pass


def get_categories():
    pass



def get_orders(customer_id):
    pass

def get_order_details(order_id):
    pass

def get_order_items(order_id):
    pass

def get_product(product_id):
    pass

def create_order(total):
    pass


def insert_order_item(last_order,product_id, item_quantity):
    pass


    


