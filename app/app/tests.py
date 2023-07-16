"""
Sample tests
"""

from django.test import SimpleTestCase


from app import calc

class CalcTests(SimpleTestCase):
    """Test the calc modules."""

    def test_add_numbers(self):
        """ Test adding numbers together."""
        res = calc.add(5,6)

        self.assertEqual(res, 11)

    def test_subtract_numbers(self):
        """ Test adding numbers together."""
        res = calc.subtract(10, 15)

        self.assertEqual(res, 5)


# from rest_framwork.test import APIClient

# class TestViews(SimpleTestCase):

#     def test_get_greetings(self):
#         """ Test getting greetings. """
#         client = APIClient()
#         res = client.get('/greetings')

#         self.assertEqual(res.status_code, 200)
#         self.assertEqual(
#             res.data,
#             ["Hello!", "Bonjour!", "Hola!"]
#         )