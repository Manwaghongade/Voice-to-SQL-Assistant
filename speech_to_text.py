import speech_recognition as sr

def capture_voice():
    recognizer = sr.Recognizer()
    with sr.Microphone() as source:
        print("🎤 Speak your question...")
        try:
            audio = recognizer.listen(source, timeout=5)
            text = recognizer.recognize_google(audio)
            print("🧠 You said (from inside speech_to_text):", text)  # 🧪 Debug print
            return text
        except sr.WaitTimeoutError:
            print("⚠️ Timeout: No speech detected.")
            return ""
        except sr.UnknownValueError:
            print("⚠️ Could not understand.")
            return ""
        except sr.RequestError as e:
            print(f"⚠️ API error: {e}")
            return ""
