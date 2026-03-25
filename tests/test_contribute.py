# tests/test_contribute.py
import unittest
from src.utils import format_commit_message

class TestUtils(unittest.TestCase):

    def test_format_commit_message(self):
        message = "Initial commit"
        formatted_message = format_commit_message(message)
        self.assertEqual(formatted_message, "[AUTO] Initial commit")

if __name__ == '__main__':
    unittest.main()
