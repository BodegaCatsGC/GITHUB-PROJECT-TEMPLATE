# Example passing test for Python
import unittest
from src.main import hello

class TestHello(unittest.TestCase):
    def test_hello(self):
        self.assertEqual(hello('Alice'), 'Hello, Alice!')

if __name__ == '__main__':
    unittest.main()
