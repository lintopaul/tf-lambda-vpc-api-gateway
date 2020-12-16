import os
from urllib.request import urlopen
import unittest
from subprocess import check_output

os.chdir("../")
tf_out = check_output(["terraform", "output", "api_gateway_invoke_url"], encoding="utf-8")
print("The api gateway invoke url is: ", tf_out)


class BasicTests(unittest.TestCase):
    def test_api_gateway_response(self):
        api_response = urlopen(tf_out)
        response = api_response.read().decode("utf-8")
        print("The api gateway invoke url response is: ", response)

        # Assert that the request-response completed successfully
        self.assertEqual(response.strip('\"'), "Hello World!")


if __name__ == "__main__":
    unittest.main()
