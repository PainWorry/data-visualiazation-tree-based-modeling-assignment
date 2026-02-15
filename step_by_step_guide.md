# Step-by-Step Guide: Tree-Based Predictive Modeling Assignment

Hi there! This guide will help you complete your assignment smoothly. I've prepared all the code and materials you need. Just follow these steps!

## Phase 1: Preparation

1.  **Check Your Files**:
    *   Open the folder `20260215 Amanda HW`.
    *   You should see `assignment_solution.ipynb` (the Python notebook), `README.md`, and this guide.

2.  **Install Python Libraries**:
    *   If you haven't already, you need to install a few tools.
    *   Open your terminal (Command Prompt or PowerShell).
    *   Type the following command and hit Enter:
        ```bash
        pip install pandas numpy matplotlib seaborn scikit-learn xgboost notebook
        ```

## Phase 2: Running the Analysis

1.  **Open the Notebook**:
    *   In the terminal, type:
        ```bash
        launch_notebook.bat
        ```
    *   A web page should open. Click on `assignment_solution.ipynb`.

2.  **Run the Code**:
    *   In the notebook, you'll see cells with code.
    *   Click on the first cell and press `Shift + Enter` to run it.
    *   Keep pressing `Shift + Enter` to run each cell one by one.
    *   **Watch the magic happen!** You'll see graphs and numbers popping up.

## Phase 3: Writing the Report

I've generated the results for you, but you need to put them into a report (Word document or PDF). Here is what you should include (based on the assignment requirements):

### 1. Dataset Description
*   **Dataset Name**: California Housing Dataset.
*   **Goal**: Predict median house values in California districts.
*   **Features (Inputs)**:
    *   `MedInc`: Median Income
    *   `HouseAge`: Median House Age
    *   `AveRooms`: Average Rooms
    *   `AveBedrms`: Average Bedrooms
    *   `Population`: Population
    *   `AveOccup`: Average Occupancy
    *   `Latitude` & `Longitude`: Location
*   **Target (Output)**: `MedHouseVal` (Median House Value in $100,000s).

### 2. Visualization & EDA
*   *Copy the graphs generated in the notebook into your report.*
*   **Target Distribution**: Shows most houses are in the lower/middle price range, but there's a cap at 5.0 ($500k).
*   **Correlation**: `MedInc` (Income) has the strongest positive correlation with House Value.

### 3. Model Results
*   *Copy the "Model Evaluation Results" table from the notebook.*
*   Mention that you used:
    *   Decision Tree
    *   Random Forest
    *   Gradient Boosting (XGBoost)
    *   AdaBoost
*   **Comparison**: Random Forest and XGBoost usually perform the best (lowest RMSE, highest R²).

### 4. Interpretation
*   **Decision Tree**: Simple to understand but less accurate (prone to overfitting).
*   **Random Forest/XGBoost**: Combine many trees to improve accuracy and reduce errors.
*   **Feature Importance**: `MedInc` is the most important predictor. Location (`Latitude`/`Longitude`) also matters.

## Phase 4: Submission

1.  **Save Your Notebook**:
    *   In Jupyter, go to File -> Save and Checkpoint.
    *   File -> Download as -> Notebook (.ipynb).
2.  **Create Zip File**:
    *   Put your Report (PDF/Word), the `.ipynb` file, and the `README.md` into a folder.
    *   Zip it up.
3.  **Submit to LEB2**.

Good luck! You've got this! 🚀
