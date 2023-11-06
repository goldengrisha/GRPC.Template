import unittest


class TestClass(unittest.TestCase):
    def test_one(self):
        self.assertIn("h", "this")

    def test_two(self):
        self.assertEqual(1, 1)
