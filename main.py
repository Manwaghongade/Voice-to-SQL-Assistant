import streamlit as st
import os
from speech_to_text import capture_voice
from nlp_to_sql import text_to_sql
from query_runner import run_sql_query

# ✅ Detect if running on Streamlit Cloud
is_cloud = os.environ.get("STREAMLIT_SERVER_HEADLESS", "") == "1"

# ✅ Page setup
st.set_page_config(page_title="Voice-to-SQL HR Assistant")
st.title("🎙️ Voice-to-SQL HR Assistant")

# ✅ Suggestions
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

# ✅ Session variables
if "user_input" not in st.session_state:
    st.session_state.user_input = ""
if "query_submitted" not in st.session_state:
    st.session_state.query_submitted = False

# ✅ Step 1: Choose input type
input_type = st.radio("Choose input type:", ["Type", "Voice"])

# ✅ Step 2: Capture user input
if input_type == "Type":
    st.session_state.user_input = st.text_input("Type your question here:")
else:
    if is_cloud:
        st.button("🎤 Click to Speak", disabled=True)
        st.info("🚫 Voice input is not supported on Streamlit Cloud. Please use the typing option instead.")
    else:
        if st.button("🎤 Click to Speak"):
            spoken = capture_voice()
            if spoken and len(spoken.strip()) > 0:
                st.session_state.user_input = spoken
                st.success(f"✅ You said: {spoken}")
            else:
                st.error("❌ Could not understand your speech. Please try again.")

# ✅ Step 3: Run the query
if st.button("🔍 Run Query"):
    if st.session_state.user_input.strip() != "":
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

            # ✅ Power BI Dashboard Link
            powerbi_link = "https://app.powerbi.com/reportEmbed?reportId=a71e8e35-50cf-4354-a48b-c55d99be48fa&autoAuth=true&ctid=307277c2-21ec-472a-afe1-ccf26e11325f"

            st.markdown(f"""
            <div style="display: flex; justify-content: center; gap: 30px; margin-top: 30px; flex-wrap: wrap;">
                <a href="{powerbi_link}" target="_blank">
                    <button style="
                        background-color:#1c1c1c;
                        color:white;
                        font-weight:bold;
                        padding:12px 24px;
                        border: 1px solid #555;
                        border-radius:25px;
                        font-size:16px;
                        cursor:pointer;
                        box-shadow: 2px 2px 5px rgba(0,0,0,0.2);
                    ">
                        📊 Open in Power BI Dashboard
                    </button>
                </a>
                <span style="font-weight: bold; font-size: 16px; color: #ccc; align-self: center;">or</span>
                <form method="post">
                    <button type="submit" name="reset" style="
                        background-color:#1c1c1c;
                        color:white;
                        font-weight:bold;
                        padding:12px 24px;
                        border: 1px solid #555;
                        border-radius:25px;
                        font-size:16px;
                        cursor:pointer;
                    ">
                        🔁 Ask Another Question
                    </button>
                </form>
            </div>
            """, unsafe_allow_html=True)

# ✅ Reset functionality
if "reset" in st.query_params:
    st.session_state.user_input = ""
    st.session_state.query_submitted = False
    st.rerun()
