import pytest
from functions import * 


@pytest.fixture
def client():
    app = create_app("weather_test.db")
    with app.test_client() as client:
        yield client


    # Tests that the function returns a rendered template with books data
def test_rendered_template(self, mocker):
        mocker.patch('src.database.conectdb')
        mocker.patch('src.database.cursor')
        mocker.patch('src.database.cursor.execute')
        mocker.patch('src.database.cursor.fetchall', return_value=[(1, 'Book1', 'Author1'), (2, 'Book2', 'Author2')])
        mocker.patch('flask.render_template')
        assert get_books() == render_template('books.html', data=[{'id': 1, 'title': 'Book1', 'author': 'Author1'}, {'id': 2, 'title': 'Book2', 'author': 'Author2'}])

    # Tests that the function correctly retrieves data from the database
def test_retrieves_data(self, mocker):
        mocker.patch('src.database.conectdb')
        mocker.patch('src.database.cursor')
        execute_mock = mocker.patch('src.database.cursor.execute')
        fetchall_mock = mocker.patch('src.database.cursor.fetchall', return_value=[(1, 'Book1', 'Author1'), (2, 'Book2', 'Author2')])
        mocker.patch('flask.render_template')
        get_books()
        execute_mock.assert_called_once_with('SELECT * FROM books')
        fetchall_mock.assert_called_once()

    # Tests that the function handles an empty books table
def test_empty_table(self, mocker):
        mocker.patch('src.database.conectdb')
        mocker.patch('src.database.cursor')
        mocker.patch('src.database.cursor.execute')
        mocker.patch('src.database.cursor.fetchall', return_value=[])  # empty table
        mocker.patch('flask.render_template')
        assert get_books() == render_template('books.html', data=[])  # should return an empty list

    # Tests that the function handles an invalid database connection
def test_invalid_connection(self, mocker):
        mocker.patch('src.database.conectdb', side_effect=db.DatabaseError)
        mocker.patch('src.database.cursor')
        mocker.patch('src.database.cursor.execute')
        mocker.patch('src.database.cursor.fetchall')
        mocker.patch('flask.render_template')
        with pytest.raises(db.DatabaseError):
            get_books()

    # Tests that the function handles an invalid SQL query
def test_invalid_query(self, mocker):
        mocker.patch('src.database.conectdb')
        mocker.patch('src.database.cursor')
        mocker.patch('src.database.cursor.execute', side_effect=db.DatabaseError)
        mocker.patch('src.database.cursor.fetchall')
        mocker.patch('flask.render_template')
        with pytest.raises(db.DatabaseError):
            get_books()

    # Tests that the function is not vulnerable to SQL injection attacks
def test_SQL_injection(self, mocker):
        mocker.patch('src.database.conectdb')
        mocker.patch('src.database.cursor')
        mocker.patch('src.database.cursor.execute')
        mocker.patch('src.database.cursor.fetchall', return_value=[(1, 'Book1', 'Author1'), (2, 'Book2', 'Author2')])
        mocker.patch('flask.render_template')
        get_books()
        # Check that the SQL query is hardcoded and not vulnerable to SQL injection
        execute_mock = mocker.patch('src.database.cursor.execute')
        execute_mock.assert_called_once_with('SELECT * FROM books')