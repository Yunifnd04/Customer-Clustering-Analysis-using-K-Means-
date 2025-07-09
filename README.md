# 🛍️ Customer Clustering Analysis using K-Means

This project aims to segment customers based on their spending behavior using K-Means clustering. The results help identify distinct customer profiles to support targeted marketing campaigns and personalized promotions.

---

## 📌 Objective

To analyze customer purchase behavior, group similar customers into clusters, and interpret those clusters for actionable marketing strategies.

---

## 📊 Dataset

- Total records: **1,654 customers**
- Features: 24 columns including demographics, spending habits, campaign responses, and product purchases.
- Data source: `marketing_clean.csv`

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

![PCA Clustering](images/pca_clustering.png)  
*PCA plot showing 3 distinct customer clusters*

### 5. Cluster Profiling

| Cluster | Income (mean) | Wine Spending | Meat Spending | Gold Spending | Total Customers |
|---------|----------------|----------------|----------------|----------------|------------------|
| 0       | High           | High           | High           | High           | ~600             |
| 1       | Medium         | Medium         | Medium         | Medium         | ~500             |
| 2       | Low            | Low            | Low            | Low            | ~500             |

---

## 📈 Visualization & Interpretation

### 🧾 Distribution of Income per Cluster

![Income Distribution](images/income_boxplot.png)

- Cluster 0 has significantly higher income.
- Cluster 2 has the lowest.

---

### 🍷 Wine Spending per Cluster

![Wine Distribution](images/mntwines_boxplot.png)

- High-spending wine customers are concentrated in Cluster 0.

---

### 🍖 Meat Products Spending

![Meat Distribution](images/meat_boxplot.png)

- Consistently high in Cluster 0, low in Cluster 2.

---

### 🍬 Sweet Products Spending

![Sweet Distribution](images/sweet_boxplot.png)

- Customers in Cluster 2 tend to buy fewer sweet products.

---

### 🧈 Gold Products Spending

![Gold Distribution](images/gold_boxplot.png)

- Cluster 0 dominates high-value gold product purchases.

---

### 👥 Cluster Sizes

![Cluster Count](images/cluster_count.png)

- Clusters are fairly balanced, which supports reliable segmentation.

---

## 🧠 Business Implications

- **Cluster 0**: High-income, high-spending customers → Ideal for premium targeting and loyalty programs.
- **Cluster 1**: Mid-tier customers → Opportunity for personalized discounts or bundling offers.
- **Cluster 2**: Low-income, low-engagement → Target with awareness campaigns or entry-level promotions.

---

## 📁 Output Files

- `clustered_customers.csv`: Final dataset with cluster labels
- Visualizations: Stored in `/images/`
- `customer_clustering_kmeans.sql`: Optional SQL version (if applicable)

---

## ✍️ Author

**Yuni Sabrina Effendy**  
Fresh Graduate in Statistics  
Specialized in Data Analysis, Customer Segmentation, and Business Intelligence  
[LinkedIn](https://linkedin.com/in/your-profile) | [GitHub](https://github.com/your-username)

---

## 📌 Note

This project is part of a marketing analysis initiative and was conducted purely for educational purposes using sample data. No real customer data is disclosed.
