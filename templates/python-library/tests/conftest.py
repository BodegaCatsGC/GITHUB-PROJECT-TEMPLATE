# Example pytest fixture for API tests
import pytest

@pytest.fixture(scope="session")
def api_base_url():
    return "http://localhost:8000"
