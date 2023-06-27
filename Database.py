import mysql.connector
import sys
class DBhelper:
    def __int__(self):

        try:
            self.conn = mysql.connector.connect(host='localhost', user='root', password='Aditya100', database='s_info')

            self.mycursor = self.conn.cursor()
        except:
            return print('Error Failed To Connect DataBase')

        else:
            return print('Connection Successful')

db = DBhelper()