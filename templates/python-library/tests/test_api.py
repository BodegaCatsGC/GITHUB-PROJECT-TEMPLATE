# Example API test for Python using requests and pytest
import requests
import pytest

def test_root_endpoint():
    response = requests.get("http://localhost:8000/")
    assert response.status_code == 200
    assert "Hello" in response.text

@pytest.mark.api
def test_openapi_schema():
    response = requests.get("http://localhost:8000/openapi.json")
    assert response.status_code == 200
    assert "openapi" in response.text
