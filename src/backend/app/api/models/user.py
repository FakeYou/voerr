import datetime
import decimal

import flask
from flask.ext.login import current_user
from flask.ext.restless import ProcessingException
from sqlalchemy.ext.hybrid import hybrid_property
from sqlalchemy.orm import validates
from app import db, login_manager
from app.api.errors.errors import Error
from app.api.validators.hash import HashValidator
from app.api.validators.number import NumberValidator
from sqlalchemy.ext.hybrid import hybrid_property

from app.api.models.photo import Photo


class User(db.Model):
    __tablename__ = 'user'

    id = db.Column('id', db.Integer, primary_key=True)
    name = db.Column('name', db.String(127))
    email = db.Column('email', db.String(127), unique=True)
    password = db.Column('password', db.String(127))
    credit = db.Column('credit', db.Integer)
    date_created = db.Column('date_created', db.DateTime, default=datetime.datetime.now)
    date_updated = db.Column('date_updated', db.DateTime, onupdate=datetime.datetime.now)

    cook = db.relationship('Cook', uselist=False, backref='user')

    def __init__(self, name=None, email=None, password=None, credit=None):
        self.name = name
        self.email = email
        self.password = password
        self.credit = credit

    def serialize(self, related=True):
        userDict = {
            'id': self.id,
            'name': self.name,
            'email': self.email
        }

        if self.cook is not None:
            userDict['cook'] = self.cook

        return userDict

    def is_authenticated(self):
        return True

    def is_active(self):
        return True

    def is_anonymous(self):
        return False

    def get_id(self):
        return str(self.id)

    def __repr__(self):
        return '<User %r>' % (self.name)

    @hybrid_property
    def avatar(self):
        get_photo = Photo.query.filter(Photo.user_id == self.id).first()
        if get_photo is not None:
            return get_photo.name
        else:
            import random
            foo = [1, 2]

            return "anon" + str(random.choice(foo)) + ".png"

    def getExclude():
        return [
            'password'
        ]

    def is_cook(self):
        return self.cook is not None

    @staticmethod
    def get_single_preprocessor(instance_id=None, **kw):

        #convert the credit to a float for easier processing


        return instance_id

    @staticmethod
    def get_single_postprocessor(result=None, **kw):

        #convert the credit to a float for easier processing


        return result

    @staticmethod
    def post_single_preprocessor(data=None, **kw):
        pass_length = 8

        # Check if provided email address already exists
        getUser = User.query.filter(User.email == data['email']).first()
        if getUser is not None:
            raise ProcessingException(
                description='Emailadres bestaat al: %r' % getUser.email,
                code=400
            )

        # Password length check
        if len(data['password']) < pass_length:
            raise ProcessingException(
                description='Wachtwoord moet minimaal %r tekens lang zijn' % pass_length,
                code=400
            )

        # Hash password
        data['password'] = HashValidator.hash(data['password'])
        data['credit'] = 200
        return data

    @staticmethod
    def patch_single_preprocessor(instance_Id=None, data=None, **kw):
        print(data)
        if 'password' in data:
            pass_length = 8

            # Password length check
            if len(data['password']) < pass_length:
                raise ProcessingException(
                    description='Wachtwoord moet minimaal %r tekens lang zijn' % pass_length,
                    code=400
                )

            # Hash password
            data['password'] = HashValidator.hash(data['password'])

        return instance_Id

    @login_manager.user_loader
    def load_user(id):
        return User.query.get(int(id))
