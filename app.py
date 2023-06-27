import sys
from Database import DBhelper

class Flipkart:
    def __int__(self):
        self.db = DBhelper()                       # Connected Database
        self.menu()


    def menu(self):
        user = input("""
        1. Enter 1 to Register
        2. Enter 2 to Login
        3. Anythings else to leave
        """)

        if user == '1':
            self.register()
        elif user == '2':
            self.login()
        else:
            sys.exit(1000)

    def register(self):
        print('We Still Write Code For You')

    def login(self):
        pass


shop = Flipkart()

