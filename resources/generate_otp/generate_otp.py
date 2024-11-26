import pyotp

# secret = secret key for authenticator app
def get_totp(secret):
    expected_otp = pyotp.TOTP(secret)
    return expected_otp.now()