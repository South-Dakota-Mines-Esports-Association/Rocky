import discord
from discord import app_commands

import smtplib
from email.message import EmailMessage
from email.headerregistry import Address
from email.utils import make_msgid

import random.random as random

otp : int = random.randint(100000, 999999)


student : f'/members/{student_id}'

# Creates container for email msg 
msg = EmailMessage()
msg['Subject'] = 'Test Email'

# from = Rocky's Address
# To = Student Address
msg['From'] = 'devon.proudfoot@mines.sdsmt.edu'
msg['To'] = 'aidan.stietz@mines.sdsmt.edu'

# Base text message
msg.set_content('This is a test email sent from the Rocky Bot Discord bot.')

# HTML message
msg.add_alternative("""\
<html>
  <body>
    <p>Hello {student}.</p>
    <p>Here is your OTP:</p>
    <p>{otp}</p>

    <img src = https://cdn.discordapp.com/attachments/1494199762759712790/1531379742673080320/Association_Logo.png?ex=6a690006&is=6a67ae86&hm=a8d04362d36fe3ff225dcc8c3095feed47b6bf9ec33c15692d07f5a885ae4be4& width="200" height="200">
  </body>
</html>
""")
    