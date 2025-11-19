from flask import (
    Blueprint, render_template, session, redirect, url_for, request
)


from LAB11.db_store import (
    get_categories, get_products, get_orders, get_order_details, 
    get_order_items, create_order, get_product, insert_order_item, basket_status, get_basket_products
)

bp = Blueprint('store', __name__)

@bp.route('/')
def index():
    lab_name='LAB11'
    return render_template('shop/index.html',lab_name=lab_name) 

@bp.route('/products')
@bp.route('/products/<int:id>')
def products(id = None):
    pass

@bp.route('/checkout')
def checkout():
    pass

@bp.route('/order', methods=['GET','POST'])
def order():
    pass

@bp.route('/orders')
def orders():
    pass

@bp.route('/add/<int:id>')
def add_basket(id):
    pass

@bp.route('/empty')
def empty_basket():
    pass

@bp.route('/remove/<int:id>')
def remove(id):
    pass

@bp.route('/decrement/<int:id>')
def decrement(id):
    pass          

@bp.route('/increment/<int:id>')
def increment(id):
    pass

