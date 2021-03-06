
include("dataLoad.jl")
initDetails()

datasets = ["housing"] #  w1a, SUSY, pendigits, heart
for dataset in datasets
    transformDataJLD(dataset, false)
    X, y = loadDataset(dataset)
    showDetails(dataset)
end
