# 🛍️ Customer Clustering Analysis using K-Means

This project aims to segment customers based on their spending behavior using K-Means clustering. The results help identify distinct customer profiles to support targeted marketing campaigns and personalized promotions.

---

## 📌 Objective

To analyze customer purchase behavior, group similar customers into clusters, and interpret those clusters for actionable marketing strategies.

---

## 📊 Dataset

- Total records: **1,654 customers**
- Features: 24 columns including demographics, spending habits, campaign responses, and product purchases.
- Data source: Kaggle

---

## 🔧 Tools & Libraries

- **Python**: pandas, matplotlib, seaborn, scikit-learn
- **Techniques**: StandardScaler, K-Means Clustering, PCA (dimensionality reduction)

---

## 🔍 Analysis Steps

### 1. Data Inspection
- Dataset has no missing values.
- Variables include:
  - Demographics: `Education`, `Marital_Status`, `Income`, `age`
  - Purchase behavior: `MntWines`, `MntMeatProducts`, `NumWebPurchases`, etc.

### 2. Standardization
- All numeric data were scaled using `StandardScaler` to ensure equal weight in clustering.

### 3. Clustering with K-Means
- Number of clusters: **3**
- Algorithm used: `KMeans(n_clusters=3, random_state=42)`

### 4. PCA for 2D Visualization

![PCA Plot](Screenshot%202025-07-09%20134556.png) 


### 5. Cluster Profiling

| Cluster | Income (mean) | Wine Spending | Meat Spending | Gold Spending | Total Customers |
|---------|----------------|----------------|----------------|----------------|------------------|
| 0       | High           | High           | High           | High           | ~600             |
| 1       | Medium         | Medium         | Medium         | Medium         | ~500             |
| 2       | Low            | Low            | Low            | Low            | ~500             |

---

## 📈 Visualization 


## 📊 Visualizations
![Income](Rata%20Rata%20Income%20Cluster.png)
![Pengeluaran](Screenshot%202025-07-04%20193128.png)
![Diskon](Screenshot%202025-07-04%20194841.png)
![Catalog](Screenshot%202025-07-04%20195310.png)
![Website](Screenshot%202025-07-04%20201615.png)





## 🧠 Business Implications

- **Cluster 0**: High-income, high-spending customers → Ideal for premium targeting and loyalty programs.
- **Cluster 1**: Mid-tier customers → Opportunity for personalized discounts or bundling offers.
- **Cluster 2**: Low-income, low-engagement → Target with awareness campaigns or entry-level promotions.

---

## ✍️ Author

**Yuni Sabrina Effendy**  
Fresh Graduate in Statistics  
[LinkedIn](https://linkedin.com/in/yunieffendy)

---
