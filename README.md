# Supervised-Learning-for-inferring-NOE-in-HSI

Hyperspectral unmixing methods enable accurate sub-pixel object identification using a signal separation approach. Although most unmixing outcomes rely heavily on the number of endmembers (NoE) present in the image scene, most unmixing methods ignore this task and assume the number to be known apriori. The existing endmember counting methods achieve relatively low accuracy. Besides, these methods require a large number of samples and require the noise level to be relatively low to achieve moderate performance. Consequently, these methods lead to high errors in endmember estimation and abundance computation and are unsuitable for local unmixing and unmixing noisy data. Since inferring NoE is equivalent to computing the numerical rank of the matrix, eigenvalues of the covariance matrix play a crucial role in this task. This work proposed a novel supervised learning framework for the estimation of NoE for data with a small number of samples, high noise, and outliers. This work developed a suitable dataset containing eigenvalues and the corresponding NoE by cropping and adding noise to widely used hyperspectral unmixing data. The work used standardsupervised learning to learn the eigenvalue pattern and infer NoE for hyperspectral data. Extensive experimentation suggests that even preliminary classifiers such as logistic regression, decision tree, XG Boost, and 1D Convolutional Neural Network (CNN) outperformed the state-of-the-art methods in diverse scenarios. The work also demonstrated that the pre-trained classifiers infer NoE accurately for other unseen data.

DATASET DETAILS

Jasper Ridge is a popular hyperspectral data .There are 512 x 614 pixels in it. Each pixel is recorded at 224 channels ranging from 380 nm to 2500 nm. The spectral resolution is up to 9.46nm. Since this hyperspectral image is too complex to get the ground truth, we consider a sub image of 100 x 100  pixels.

There are four endmembers latent in this data: "#1 Road", "#2 Soil", "#3 Water" and "#4 Tree".
![image](https://github.com/user-attachments/assets/09fe42d9-1838-4012-9982-1268f617c77d)


