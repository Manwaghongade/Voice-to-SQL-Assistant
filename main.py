import streamlit as st
import os
from speech_to_text import capture_voice
from nlp_to_sql import text_to_sql
from query_runner import run_sql_query

# Detect Streamlit Cloud
is_cloud = os.environ.get("STREAMLIT_SERVER_HEADLESS", "") == "1"

st.set_page_config(page_title="Voice-to-SQL HR Assistant")
st.title("🎙️ Voice-to-SQL HR Assistant")

# --- What can I ask
with st.expander("📋 What can I ask? Click to view suggestions"):
    st.markdown("""
    <div style='height: 250px; overflow-y: scroll; padding-right: 10px'>
    #### 🧾 General Info
    - all employees  
    - employee details  
    #### 💰 Salary & Income
    - average salary by department  
    #### 📈 Hiring Trend
    - hiring trend  
    - employees hired per year  
    #### 📉 Attrition Analysis
    - attrition by department  
    - department wise attrition  
    - attrition by gender  
    - resigned male and female  
    - resignation by gender by department  
    - total resignations  
    - resigned employees count  
    - attrition by performance  
    #### 👥 Employee Count
    - total employees  
    - employee count  
    - headcount  
    - male vs female  
    - gender ratio  
    - gender-wise  
    - male and female employees  
    #### ⏳ Tenure
    - average tenure of active  
    - average tenure of resigned  
    - average tenure by department  
    - tenure by department  
    #### 🎯 Performance
    - performance summary  
    - count by performance  
    #### 📦 Recruitment
    - recruitment channel  
    #### 💍 Marital Status
    - marital status  
    </div>
    """, unsafe_allow_html=True)

# --- Session defaults
if "user_input" not in st.session_state:
    st.session_state.user_input = ""
if "query_submitted" not in st.session_state:
    st.session_state.query_submitted = False

# --- Input type
input_type = st.radio("Choose input type:", ["Type", "Voice"])

# --- Capture input
if input_type == "Type":
    st.session_state.user_input = st.text_input("Type your question here:")
else:
    if st.button("🎤 Click to Speak"):
        if is_cloud:
            st.warning("🚫 Voice input is not supported on Streamlit Cloud. Please use the typing option.")
        else:
            spoken = capture_voice()
            if spoken and spoken.strip():
                st.session_state.user_input = spoken
                st.success(f"✅ You said: {spoken}")
            else:
                st.error("❌ Could not understand your speech. Please try again.")

# --- Run Query
if st.button("🔍 Run Query"):
    if st.session_state.user_input.strip():
        st.session_state.query_submitted = True
        sql_query = text_to_sql(st.session_state.user_input)
        st.subheader("🧠 SQL Generated:")
        st.code(sql_query, language="sql")

        result = run_sql_query(sql_query)
        st.subheader("📊 Query Result:")

        if result.empty:
            st.warning("❗ No data found. Try rephrasing your question.")
        else:
            st.dataframe(result)

            # Power BI & Ask Again Buttons (side by side)
            col1, col2 = st.columns([1, 1])
            with col1:
                st.markdown(
                    f"""
                    <a href="https://app.powerbi.com/reportEmbed?reportId=a71e8e35-50cf-4354-a48b-c55d99be48fa&autoAuth=true&ctid=307277c2-21ec-472a-afe1-ccf26e11325f" target="_blank">
                        <button style="
                            background-color:#0E1117;
                            color:#ccc;
                            font-weight:bold;
                            padding:10px 20px;
                            border:white;
                            border-radius:25px;
                            font-size:16px;
                            cursor:pointer;
                            box-shadow: 2px 2px 5px rgba(0,0,0,0.2);
                            width: 100%;
                        ">
                            📊 Open in HR Analytics Dashboard
                        </button>
                    </a>
                    """,
                    unsafe_allow_html=True,
                )
            with col2:
                if st.button("🔁 Ask Another Question"):
                    st.session_state.user_input = ""
                    st.session_state.query_submitted = False
                    st.rerun()
    else:
        st.warning("⚠️ Please type or speak your question first.")
