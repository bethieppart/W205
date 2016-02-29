*** Hi Manos: please note that I had that weird issue with a phantom hospital_compare directory in HDFS that I could neither access or delete. Per our email, I used hospital_compare1 instead. 

LOADING AND MODELLING
---------------------
The steps below will strip the header rows then load the raw data files into their own directories in HDFS at /user/w205/hospital_compare1.

1. Launch an instance of UCB W205 Spring AMI of at least medium size and attach a volume of at least 100GB that has already been         initalized as in labs 1-4.
2. change to the w205 user by typing: su - w205
3. change to the /data directory by typing: cd /data
4. Get the load_data_lake.sh script from my GitHub repository by typing:
	 wget https://raw.githubusercontent.com/bethieppart/W205/master/exercise_1/loading_and_modeling/load_data_lake.sh
5. Make the load_data_lake script executable by typing: chmod +x /data/load_data_lake.sh
6. Run the script by typing: /data/load_data_lake.sh

TRANSFORMATIONS
----------------
The steps below will create tables as depicted in the ER diagram contained in the loading_and_modeling directory. Note that the the Timely_and_Effective and Readmissions_and_Death data are combined into a single table called combined_trans to facilitate the use of all procedures in the analysis. 

1. Make the transformation shell script executable by typing: chmod +x /data/W205/exercise_1/transforming/all_transforms.sh
2. Run the shell script by typing: /data/W205/exercise_1/transforming/all_transforms.sh

INVESTIGATIONS
--------------
The steps below will run all of the Hive SQL scripts required to produce the outputs included in the investigations text files. The output of each SQL script is written to it's own file in the investigations directory on the AMI.

1. Make the investigations shell script executable by typing: 
   chmod +x /data/W205/exercise_1/investigations/run_all_investigation_scripts.sh
2. Run the shell script by typing: /data/W205/exercise_1/investigations/run_all_investigation_scripts.sh
