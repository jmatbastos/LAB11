from flask import (
    Blueprint, flash, redirect, render_template, request, session, url_for, make_response
)


from LAB11.db_auth import (
    register_user,login_user, generate_cookie,cookie_reset
)

from LAB11.db_store import basket_status

bp = Blueprint('auth', __name__, url_prefix='/auth')

@bp.route('/register', methods=('GET', 'POST'))
def register():
    pass

@bp.route('/login', methods=('GET', 'POST'))
def login():
    pass

@bp.route('/logout')
def logout():
    cookie_reset(session['user_id'])
    session.clear()    
    resp = make_response(render_template('auth/send_cookie.html'))
    resp.set_cookie('remember_me', '', expires=0)
    return resp    



