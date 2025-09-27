##MakeEML_PPCPs


# (install and) Load EMLassemblyline #####
#  install.packages('devtools')
#  install.packages('Rtools')
# devtools::install_github("EDIorg/EMLassemblyline")

library(EMLassemblyline)



## Step 16: Obtain a package.id. ####
# Go to the EDI staging environment (https://portal-s.edirepository.org/nis/home.jsp),
# then login using one of the Carey Lab usernames and passwords.

# Select Tools --> Data Package Identifier Reservations and click
# "Reserve Next Available Identifier"
# A new value will appear in the "Current data package identifier reservations"
# table (e.g., edi.123)
# Make note of this value, as it will be your package.id below

#Step 17: Make EML
# View documentation for this function
?make_eml
getwd()

# Run this function
make_eml(
  path = "./EDI/MakeEML_PPCP/2025",
  data.path = "./EDI/MakeEML_PPCP/2025",
  eml.path = "./EDI/MakeEML_PPCP/2025",
  dataset.title = "Acetaminophen, caffeine, and triclosan concentrations before and after swimming events in Carvins Cove Reservoir, Virginia, USA, 2021-2023",
  temporal.coverage = c("2021-06-01", "2023-06-29"),
  maintenance.description = 'completed',
  data.table = c("CCR_PPCPs_2021_2023.csv",
                 "reservoir_site_descriptions.csv"),
  data.table.description = c("PPCP dataset",
                             "Description, latitude, and longitude of reservoir sampling sites"),
  other.entity = c("CCR_Swimming_analysis.Rmd"),
  other.entity.description = c("Data analysis script"),
  user.id = 'ccarey',
  user.domain = 'EDI',
  package.id = 'edi.1374.2') #reserve new staging environment package id each year

## Step 8: Check your data product! ####
# Return to the EDI staging environment (https://portal-s.edirepository.org/nis/home.jsp),
# then login using one of the Carey Lab usernames and passwords.

# Select Tools --> Evaluate/Upload Data Packages, then under "EML Metadata File",
# choose your metadata (.xml) file (e.g., edi.270.1.xml), check "I want to
# manually upload the data by selecting files on my local system", then click Upload.

# Now, Choose File for each file within the data package (e.g., each zip folder),
# then click Upload. Files will upload and your EML metadata will be checked
# for errors. If there are no errors, your data product is now published!
# If there were errors, click the link to see what they were, then fix errors
# in the xml file.
# Note that each revision results in the xml file increasing one value
# (e.g., edi.270.1, edi.270.2, etc). Re-upload your fixed files to complete the
# evaluation check again, until you receive a message with no errors.

## Step 9: PUBLISH YOUR DATA! ####
#  #DO NOT REQUEST A NEW PACKAGE ID FOR UPDATING THE CHEMISTRY DATASET
#  SIMPLY INCREASE THE LAST DIGIT OF THE PREVIOUS PACKAGE ID BY 1 TO UPDATE THE CURRENT PUBLICATION
# DIRECTIONS ON HOW TO GET A NEW ID ARE HERE, BUT DO NOT USE THEM FOR ALREADY PUBLISHED DATASETS BEING UPDATED (E.G. CHEMISTRY, CATWALK, CTD, ETC.)
# NEVER ASSIGN this identifier to a staging environment package.
# Go to the EDI Production environment (https://portal.edirepository.org/nis/home.jsp)
# and login using the ccarey (permanent) credentials.

# Select Tools --> Data Package Identifier Reservations and click "Reserve Next
# Available Identifier". A new value will appear in the "Current data package
# identifier reservations" table (e.g., edi.518)
# This will be your PUBLISHED package.id

# In the make_eml command below, change the package.id to match your
# PUBLISHED package id. This id should end in .1 (e.g., edi.518.1)

# ALL OTHER entries in the make_eml() command should match what you ran above,
# in step 7

make_eml(



) #DO NOT REQUEST A NEW PACKAGE ID, SIMPLY INCREASE THE LAST DIGIT HERE BY 1 TO UPDATE THE CURRENT PUBLICATION

# 2025 data pub =


# Once your xml file with your PUBLISHED package.id is Done, return to the
# EDI Production environment (https://portal.edirepository.org/nis/home.jsp)

# Select Tools --> Preview Your Metadata, then upload your metadata (.xml) file
# associated with your PUBLISHED package.id. Look through the rendered
# metadata one more time to check for mistakes (author order, bounding box, etc.)

# Select Tools --> Evaluate/Upload Data Packages, then under "EML Metadata File",
# choose your metadata (.xml) file associated with your PUBLISHED package.id
# (e.g., edi.518.1.xml), check "I want to manually upload the data by selecting
# files on my local system", then click Upload.

# Now, Choose File for each file within the data package (e.g., each zip folder),
# then click Upload. Files will upload and your EML metadata will be checked for
# errors. Since you checked for and fixed errors in the staging environment, this
# should run without errors, and your data product is now published!

# Click the package.id hyperlink to view your final product! HOORAY!
