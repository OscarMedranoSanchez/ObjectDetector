# Content-Based Image Retrieval (CBIR) System

This project focuses on the development of a **Content-Based Image Retrieval (CBIR)** system, designed to retrieve images similar to a given query image from a database. The project is divided into two main phases:  
1. A system based on **Grayscale Histograms**.  
2. An improved system utilizing **HMMD (Hue-Max-Min-Difference)** color descriptors.

## 1. Grayscale Histogram-Based Retrieval

### Objective
The goal of this phase is to retrieve images based on their grayscale intensity distribution.

### Process
1. The system computes the **grayscale histogram** of the query image.  
2. It compares this histogram with the histograms of all database images using various distance metrics.  
3. The top 10 images with the smallest distances are identified as the most similar.

### Distance Metrics
- **Bhattacharyya Distance**  
- **Hellinger Distance**  
- **Chi-Squared Distance**  
- **Correlation Distance**

### Results
- **Best Metrics**: Bhattacharyya and Hellinger provided the highest precision and recall.  
- **Limitations**: Only luminance is considered, leading to challenges in distinguishing images with similar brightness but different colors.

---

## 2. HMMD Color Descriptor-Based Retrieval

### Objective
The second phase improves the system by incorporating **color information** using the HMMD color space, enabling more detailed image comparison.

### Process
1. Images are converted from RGB to the **HMMD color space**, which includes:
   - **Hue (H):** Dominant color.  
   - **Max (M):** Maximum intensity of RGB.  
   - **Min (M):** Minimum intensity of RGB.  
   - **Difference (D):** Difference between Max and Min.  
2. Histograms are computed based on quantized HMMD values at **128** and **256 bins**.  
3. Similarity is determined using distance metrics, and the top 10 matches are returned.

### Distance Metrics
- **Bhattacharyya Distance**  
- **Hellinger Distance**  
- **Chi-Squared Distance**  
- **Kullback-Leibler Divergence**

### Results
- **128 Bins**: Best metric: Bhattacharyya.  
- **256 Bins**: Best metric: Chi-Squared.  
- **Improvement**: Incorporating HMMD significantly improves retrieval accuracy over grayscale histograms.  

---

## 3. Summary

This project demonstrates the transition from a basic grayscale-based retrieval system to a more robust solution leveraging color information. The HMMD-based system effectively distinguishes images with complex color variations, significantly enhancing the CBIR capabilities. Further improvements could include:
- Using texture descriptors (e.g., Local Binary Patterns).  
- Implementing machine learning models or deep learning (e.g., Convolutional Neural Networks).

