
# Load raw data
train = read.csv("train.csv", header= TRUE)
test = read.csv("test.csv", header= TRUE)

# Add "survived" variable to test set to allow for combining data sets
# Add an 11th column to test set to match with the training data set
test.survived = data.frame(Survived = rep("None", nrow(test)), test[,])

# Combine data sets
data.combined = rbind(train, test.survived)

# R data types
str(data.combined)

data.combined$Survived = as.factor(data.combined$Survived)
data.combined$pclass = as.factor(data.combined$pclass)

# Gross survival rates
table(data.combined$Survived)

# Distribution across classes
table(data.combined$Pclass)
 





