import mysqlx
import pytest
from src.functions_query import * 
from flask import Flask
import os
from src.webserver import create_app
import mysql.connector 




@pytest.fixture
def app():
        
    app = create_app("railway_test")
    
    app.config['TESTING'] = True
    return app
    
   
    # Tests that the home route returns the index.html template
def test_home_route_returns_index(app):
        with app.test_client() as client:
            response = client.get('/books')
            assert response.status_code == 200

    # Tests that the home route returns the index.html template
def test_home_route_returns_index_html_template(app):
    with app.test_client() as client:
        response = client.get('/')
        assert response.status_code == 200
        assert b'<!DOCTYPE html>' in response.data
        assert b'<title>Library</title>' in response.data



def test_books_route_returns_books_data(app):
    with app.test_client() as client:
        response = client.get('/books')
        assert response.status_code == 200
        assert b'Title' in response.data
        assert b'Author' in response.data
        assert b'Category' in response.data


def test_videos_route_returns_videos_data(app):
    with app.test_client() as client:
        response = client.get('/videos')
        assert response.status_code == 200
        assert b'Title' in response.data
        assert b'Director' in response.data
        assert b'Year' in response.data
        
        
    # Tests that the function returns None
def test_delete_books_by_id(app):
    app.patch('src.database.conectdb')
    app.patch('src.database.conectdb().cursor')
    app.patch('src.database.conectdb().cursor().execute')
    app.patch('src.database.conectdb().commit')
    app.patch('src.database.conectdb().cursor().close')
    app.patch('src.database.conectdb().close')

    # Llamar a la función delete_books_by_id
    result = delete_books_by_id(1)

    # Verificar que la función devuelve None
    assert result is None
    
    # Tests that the function returns None when connecting to a non-existent database
def test_nonexistent_database():
        with pytest.raises(mysql.connector.Error):
            con = mysql.connector.connect(
                host='containers-us-west-59.railway.app',
                user='root',
                passwd='mzj8vF2N8BRe4h8m8cyB',
                database='nonexistent_database',
                port=5906,
                auth_plugin='mysql_native_password'
            )
def test_state_of_products(app):
    # Mock de la base de datos
    mock_con = app.patch.tuple(app)
    mock_cursor = mock_con.return_value.cursor.return_value
    mock_cursor.fetchall.return_value = [
        (1, 'Libro 1', 'Disponible'),
        (2, 'Libro 2', 'Prestado'),
        (3, 'Video 1', 'Disponible'),
        (4, 'Video 2', 'No disponible'),
        (5, 'SoundTrack 1', 'Disponible'),
        (6, 'SoundTrack 2', 'Disponible')
    ]

    # Llamar a la función state_of_products
    with app.test_request_context():
        response = state_of_products()

    # Verificar que el resultado es el esperado
    assert response.status_code == 200
    assert b'Libro 1' in response.data
    assert b'Disponible' in response.data
    assert b'Libro 2' in response.data
    assert b'Prestado' in response.data
    assert b'Video 1' in response.data
    assert b'Disponible' in response.data
    assert b'Video 2' in response.data
    assert b'No disponible' in response.data
    assert b'SoundTrack 1' in response.data
    assert b'Disponible' in response.data
    assert b'SoundTrack 2' in response.data
    assert b'Disponible' in response.data