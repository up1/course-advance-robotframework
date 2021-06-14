import speech_recognition as sr

r = sr.Recognizer()
with sr.Microphone() as source:
    print("Talk")
    audio_text = r.listen(source)
    print("Time over, thanks")

    try:
        # Use google speech recognition
        # https://cloud.google.com/speech-to-text/docs/languages
        print("Text: " + r.recognize_google(audio_text, language="th-TH"))
    except:
        print("Sorry, I did not get that")


