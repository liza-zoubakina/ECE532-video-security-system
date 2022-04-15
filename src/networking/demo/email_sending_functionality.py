#Credit is given to https://www.courier.com/blog/three-ways-to-send-emails-using-python-with-code-tutorials/ from where a great deal of the code is derived
import smtplib
try:
    #Create your SMTP session
    smtp = smtplib.SMTP('smtp.gmail.com', 587)

   #Use TLS to add security
    smtp.starttls()

    #User Authentication
    smtp.login("quish08@gmail.com","the_password")

    #Defining The Message
    message = "Message_you_need_to_send"

    #Sending the Email
    smtp.sendmail("quish08@gmail.com", "quish08@hotmail.com",message)

    #Terminating the session
    smtp.quit()
    print ("Email sent successfully!")

    # Create your SMTP session
    smtp = smtplib.SMTP('smtp.gmail.com', 587)

    # Use TLS to add security
    smtp.starttls()

    # User Authentication
    smtp.login("quish08@gmail.com", "the_password")

    # Defining The Message
    message = "Message_you_need_to_send"

    # Sending the Email
    smtp.sendmail("quish08@gmail.com", "quish08@hotmail.com", message)

    # Terminating the session
    smtp.quit()
    print("Email sent successfully!")

except Exception as ex:
    print("Something went wrong....",ex)