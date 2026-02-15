# Report Content: Tree-Based Predictive Modeling

> **Note**: This document contains the text and analysis for your assignment report. You should copy this content into a Word document or PDF and format it nicely. Use the images generated in the folder (`target_dist.png`, `feature_importance.png`, etc.) to illustrate the report.

## 1. Dataset Description

For this assignment, I selected the **California Housing Dataset**, a standard dataset used for regression tasks.

*   **Source**: The dataset is derived from the 1990 U.S. Census.
*   **Goal**: Predict the median house value (`MedHouseVal`) for California districts based on various features.
*   **Size**: 20,640 samples.
*   **Features**:
    1.  `MedInc`: Median income in block group.
    2.  `HouseAge`: Median house age in block group.
    3.  `AveRooms`: Average number of rooms per household.
    4.  `AveBedrms`: Average number of bedrooms per household.
    5.  `Population`: Block group population.
    6.  `AveOccup`: Average number of household members.
    7.  `Latitude`: Block group latitude.
    8.  `Longitude`: Block group longitude.
*   **Target Variable**: `MedHouseVal` (Median house value in units of $100,000).

**Preprocessing Steps**:
*   The dataset was checked for missing values (none found in the standard version).
*   Data was split into Training (80%) and Testing (20%) sets to evaluate model performance on unseen data.

## 2. Data Visualization and EDA

We performed Exploratory Data Analysis (EDA) to understand the data distribution and relationships.

### Target Variable Distribution
*(Insert `target_dist.png` here)*
The distribution of `MedHouseVal` is skewed to the right. There is a noticeable cap at 5.0 ($500,000), which suggests that values above this threshold were censored.

### Feature Correlation
*(Insert `correlation_matrix.png` here)*
The correlation matrix shows that `MedInc` (Median Income) has the strongest positive correlation with the target variable (`0.69`). This suggests that higher-income areas tend to have higher house values. Other features like `AveRooms` have weaker correlations.

## 3. Model Development and Evaluation

We implemented four tree-based algorithms to predict house values:
1.  **Decision Tree**: A single tree model (max depth = 5).
2.  **Random Forest**: An ensemble of 100 trees.
3.  **Gradient Boosting**: Boosting ensemble (sklearn implementation).
4.  **AdaBoost**: Adaptive Boosting.
5.  **XGBoost**: Optimized Gradient Boosting.

The models were evaluated using **RMSE** (Root Mean Squared Error), **MAE** (Mean Absolute Error), and **R²** (Coefficient of Determination).

### Results Comparison

| Model | RMSE (Lower is better) | MAE (Lower is better) | R² (Higher is better) |
| :--- | :--- | :--- | :--- |
| **XGBoost** | **0.472** | **0.310** | **0.830** |
| Random Forest | 0.505 | 0.328 | 0.805 |
| Gradient Boosting | 0.542 | 0.372 | 0.776 |
| Decision Tree (Depth=5) | 0.724 | 0.522 | 0.600 |
| AdaBoost | 0.784 | 0.650 | 0.531 |

### Interpretation
*   **Best Model**: **XGBoost** achieved the best performance with an R² of 0.83, explaining 83% of the variance in house values. It also had the lowest error (RMSE 0.47).
*   **Random Forest** was a close second (R² 0.805), demonstrating the power of bagging ensembles.
*   **Decision Tree**: The single decision tree performed significantly worse (R² 0.60) compared to the ensemble methods, highlighting the limitations of simple models and their tendency to underfit or overfit if not tuned perfectly.
*   **AdaBoost** performed the worst in this default configuration, likely requiring more hyperparameter tuning for regression tasks.

## 4. Visualizations of Models

### Feature Importance (Random Forest)
*(Insert `feature_importance.png` here)*
The analysis confirms that **Median Income (`MedInc`)** is by far the most important feature for predicting house prices. Location features (`Latitude`, `Longitude`) and `AveOccup` also play significant roles.

### Decision Tree Structure
*(Insert `decision_tree.png` here)*
The visualization of the simple Decision Tree shows how the model splits data based on `MedInc` at the root node, confirming its importance.

## 5. Conclusion
In this project, we successfully applied tree-based models to predict housing prices. The ensemble methods (XGBoost, Random Forest) significantly outperformed the single Decision Tree. **XGBoost** proved to be the most effective model for this dataset. The analysis highlighted that **income** is the primary driver of housing prices in this region.
