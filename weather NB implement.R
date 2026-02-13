weatherdata= read.csv("C:\\Users\\HP\\Downloads\\Weather_New_2.csv" , header = TRUE)

weatherdata$play = tolower(trimws(weatherdata$play))
weatherdata$play = factor(weatherdata$play, levels = c("no","yes"))

print(weatherdata)

library(e1071)

NB_model = naiveBayes(play ~ ., data = weatherdata)

NB_pred_class = predict(NB_model, weatherdata)


conf_matrix = table(Actual = weatherdata$play, Predicted = NB_pred_class)
print(conf_matrix)

TP = conf_matrix["yes","yes"]
TN = conf_matrix["no","no"]
FP = conf_matrix["no","yes"]
FN = conf_matrix["yes","no"]

P = TP + FN
N = TN + FP

accuracy = (TP + TN) /(P+N)
precision = TP / (TP + FP)
Sensitivity = TP / (TP + FN)
f1_score = 2 * ((precision * Sensitivity) / (precision + Sensitivity))
error_rate = 1 - accuracy

cat("Accuracy =", accuracy, "\n")
cat("Precision =", precision, "\n")
cat("Sensitivity =", Sensitivity, "\n")
cat("F1 Score =", f1_score, "\n")
cat("Error Rate =", error_rate, "\n")

library(pROC)
NB_pred_prob  = predict(NB_model, weatherdata, type = "raw")  #for ROC

N_yes_prob = NB_pred_prob[, "yes"]

# ROC Curve
roc_curve = roc(weatherdata$play, N_yes_prob, levels = c("no", "yes"))
plot(roc_curve, col="darkgreen", lwd=2, main="Naive Bayes ROC Curve")

auc_val = auc(roc_curve)
cat("AUC =", auc_val)