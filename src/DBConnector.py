import sqlite3

class DBConnector:
    def connect(self):
        try:      
            # Establish a connection to the database
            con = sqlite3.connect("data/menuchu.db")
            print("Connection to DB successful")
            return con
        except Exception as e:
            print(f"Error connecting to database: {e}")
            raise e