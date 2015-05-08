#conn = sqlite3.connect(DB_NAME)
#conn.row_factory = sqlite3.Row
#deiba

class cinema_database_enquery:

    def __init__(self, conn):
        self.conn = conn
  
    def get_all_movies(self):
        cursor = self.conn.cursor()
        result = cursor.execute("""
        SELECT movie_id, movie_name, movie_rating
        FROM Movies ORDER BY movie_rating
        """ )
        return result.fetchall()

    def get_all_movies_by_id_and_date(self, movie_id, movie_date):
        cursor = self.conn.cursor()
        result = cursor.execute(tuk ni trqbva query)
        return result.fetchall()

    def get_all_movies_by_id(self, movie_id):
        cursor = self.conn.cursor()
        result = cursor.execute(query)
        return result.fetchall()

    def get_num_of_free_seats_by_movie_id(self, movie_id):
        cursor = self.__conn.cursor()
        result = cursor.execute(query)
        return result.fetchall()

    def get_num_of_seats_by_projection_id(self, projection_id):
        cursor = self.__conn.cursor()
        result = cursor.execute(query)
        
