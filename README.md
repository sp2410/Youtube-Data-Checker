# Youtube-Data-Checker
Checks consistency between two csv data 


All the tests are in the spec folder. To run tests, run rspec spec as shown below:
![Alt text](rspec_tests.png?raw=true "Title")


To run the command line tool, run : 
<b>ruby run_script.rb csv1.csv csv2.csv</b>

To add concerns run: <b>ruby run_script.rb csv1.csv csv2.csv channel_ownership</b> 

or 

<b>ruby run_script.rb csv1.csv csv2.csv subscriber_count</b>

As shown below: 

![Alt text](run_script.png?raw=true "Title")


Header of the files are:
Account Email, YouTube Channel, Subscriber Count


Example files:

CSV 1

Account Email, YouTube Channel, Subscriber Count
test_1@gmail.com,UCWBKJ1RNeKTPII34pc6UyUg,28443
test_2@gmail.com,5OXObSqKlu01WtG0GTUq2g,13
test_3@gmail.com,7iTbphgUFuJarHcAHMGduQ,1365
test_4@gmail.com,http://www.youtube.com/channel/UCe09gaA8UCiamw0RQaHuHJw,5
test_5@gmail.com,https://www.youtube.com/channel/UClELwfTibQ78MAVyVi6twCg,1477
test_6@gmail.com,https://www.youtube.com/channel/UC1OFDlfdRb6ma1ZGZd07gWA,3590503
test_7@gmail.com,https://www.youtube.com/channel/UCfHRX7ihY8WnSV53NnpKOvQ,54065
test_8@gmail.com,6cf7Ad_qowX9qeQfD5dT8g,2831
test_9@gmail.com,tIRU_vvyQmUADgAt31n7Xg,564
test_10@gmail.com,Qv9Wo4D2g8tMhH3lGcxiWg,282
test_11@gmail.com,s4cgIKR4SfglgNQGARgsHA,56632
test_12@gmail.com,kRkD16_ps8mZvkZHnby5oA,26582
test_13@gmail.com,pfLKSzjkVsBqIHNbl8Mz6A,428
test_14@gmail.com,oG6lsYx4dhedb0ZjL2O_HQ,5495
test_15@gmail.com,http://youtube.com/channel/UCXApAnHLoStKPlFR9_KoBKw,6
test_16@gmail.com,1eyHg00NjjbFMeF9Ol1Zew,29126
test_17@gmail.com,http://www.youtube.com/channel/UCGfVjOZE8TTR6L1ylG6lHSg,8366
test_18@gmail.com,RJ-d6DiO6raIEddFnlrubQ,132
test_19@gmail.com,q6N_kqiCjE-KqDmoWgXKYA,"26"
test_20@gmail.com,33PJanBSN4WfosXHVkA9_A,2371
test_21@gmail.com,B5ZnX_2hTTP5tTuPmOk3uA,344
test_22@gmail.com,A8E2__IHw9UZhEeHrTEnJA,339
test_23@gmail.com,UCfmVQFPh1KVkCvuvQjnRrxA,42953
test_24@gmail.com,OiVONk5g_VCxXtP2som4yA,172
test_25@gmail.com,ZNw2suHUu1t9NyHB0DolbA,10
test_26@gmail.com,ZtvdCKWWq8AkTZW1RXpy1A,"2,216"
test_27@gmail.com,http://www.youtube.com/channel/UCJCM8kLrPjgPcEJEuIV-ELw,1402
test_28@gmail.com,http://www.youtube.com/channel/UCDi_A4XTSiD5hCO3-6R6OqA,2570
test_29@gmail.com,tUCA0-v2fjxOOPyA84nJlg,1434
test_30@gmail.com,5ZiUupQKOcEx1gvShKS6Bg,688
test_31@gmail.com,UCzSS4r4fkYgvXL6bWCRwegg,25
test_32@gmail.com,fq9aGE_r1TvTfYWpxEI0_Q,180
test_33@gmail.com,youtube.com/channel/UC6WLScIs2J8VnFulIn79Nfw,534
test_34@gmail.com,http://www.youtube.com/channel/UC8bKzySZjA4Eiir7JvBSkEg,89
test_35@gmail.com,youtube.com/channel/UCQeUfLM907YOxA_9_jIiung,1076
test_36@gmail.com,http://www.youtube.com/channel/UCb95qCSx8rO7U0P0oE6RcvA,503
test_37@gmail.com,w53zi4ftVPYpqKTQUoxfKw,254
test_38@gmail.com,uyFiGMNqQo-nfBX5jY5ZOA,20
test_39@gmail.com,KPsyZ9KQiXktdGK2jRaTwQ,301
test_40@gmail.com,GfCFvRsJfXXgPD1wfrI9wA,644
test_41@gmail.com,e7gOaF5-tH7I3NocgLnhAA,21507
test_42@gmail.com,jXe6LuyALURdEdRBOn8C5A,286
test_43@gmail.com,cLDyZ4ESTq6TQGbc2M1Zig,112
test_44@gmail.com,-Zh14hU-5p58lilWNwyQlg,33
test_45@gmail.com,YLCka_OXQZtoBJZ5pW9sFg,2000
test_46@gmail.com,_lpDjhfkyaAr1Fd6AoMXQw,10
test_47@gmail.com,UCEL6PQjvKuk2-6sTaUmub8A,89
test_48@gmail.com,sbo6gAIwSELM1vApwRw4ng,"244"
test_49@gmail.com,X0ZEkd41kOTZ_2qRHViSQw,54
test_50@gmail.com,http://www.youtube.com/channel/UCsR5ZMY4gyAuCUTMkxPocrQ,4
test_51@gmail.com,v3jmHLil11QvVzXxm18KHg,59
test_52@gmail.com,hJbZilh7YcrnajYJ-gsLqw,84
test_53@gmail.com,Cnms8EieLvB6oNLXBgIGNQ,138902
test_54@gmail.com,tTIo7Mi2KuZTwoCys4Cdhw,1
test_55@gmail.com,KjvSEotHjQFYjRwCWJGSdQ,5
test_56@gmail.com,YVAY2qVpaIzVWA56nIkJtA,766
test_57@gmail.com,Phv_Fz6YkjqbWI11IhScOQ,89
test_58@gmail.com,UCiQ4x3FbxB9yPETGlvevbJQ,246
test_59@gmail.com,http://youtube.com/channel/UCg0zJnmieAtkq0evFcgt97w,29
test_60@gmail.com,054PSI_p4hjVVQUUWTxv4Q,"19,223"


CSV 2

Account Email, YouTube Channel, Subscriber Count
test_1@gmail.com,WBKJ1RNeKTPII34pc6UyUg,29443
test_2@gmail.com,5OXObSqKlu01WtG0GTUq2g,13
test_3@gmail.com,UC7iTbphgUFuJarHcAHMGduQ,1365
test_4@gmail.com,HjA1jv-UJcBxhK_avZfX8Q,5
test_5@gmail.com,lELwfTibQ78MAVyVi6twCg,1477
test_6@gmail.com,1OFDlfdRb6ma1ZGZd07gWA,3590503
test_7@gmail.com,fHRX7ihY8WnSV53NnpKOvQ,54065
test_8@gmail.com,6cf7Ad_qowX9qeQfD5dT8g,"2,831"
test_9@gmail.com,tIRU_vvyQmUADgAt31n7Xg,564
test_10@gmail.com,UCQv9Wo4D2g8tMhH3lGcxiWg,282
test_11@gmail.com,s4cgIKR4SfglgNQGARgsHA,56632
test_12@gmail.com,kRkD16_ps8mZvkZHnby5oA,26582
test_13@gmail.com,pfLKSzjkVsBqIHNbl8Mz6A,428
test_14@gmail.com,oG6lsYx4dhedb0ZjL2O_HQ,5485
test_15@gmail.com,UCXApAnHLoStKPlFR9_KoBKw,689
test_16@gmail.com,UC1eyHg00NjjbFMeF9Ol1Zew,29126
test_17@gmail.com,eiA19nF1mk1YckW5yq8XJQ,8366
test_18@gmail.com,RJ-d6DiO6raIEddFnlrubQ,132
test_19@gmail.com,UCq6N_kqiCjE-KqDmoWgXKYA,26
test_20@gmail.com,33PJanBSN4WfosXHVkA9_A,2371
test_21@gmail.com,https://youtube.com/channel/UCB5ZnX_2hTTP5tTuPmOk3uA,344
test_22@gmail.com,A8E2__IHw9UZhEeHrTEnJA,339
test_23@gmail.com,UCfmVQFPh1KVkCvuvQjnRrxA,"42,953"
test_24@gmail.com,OiVONk5g_VCxXtP2som4yA,172
test_25@gmail.com,ZNw2suHUu1t9NyHB0DolbA,10
test_26@gmail.com,8TRgUb5hGzcPErf5bb1u2Q,3216
test_27@gmail.com,JCM8kLrPjgPcEJEuIV-ELw,1402
test_28@gmail.com,Di_A4XTSiD5hCO3-6R6OqA,2570
test_29@gmail.com,tUCA0-v2fjxOOPyA84nJlg,1434
test_30@gmail.com,zSS4r4fkYgvXL6bWCRwegg,688
test_31@gmail.com,5ZiUupQKOcEx1gvShKS6Bg,25
test_32@gmail.com,fq9aGE_r1TvTfYWpxEI0_Q,180
test_33@gmail.com,6WLScIs2J8VnFulIn79Nfw,534
test_34@gmail.com,8bKzySZjA4Eiir7JvBSkEg,8
test_35@gmail.com,QeUfLM907YOxA_9_jIiung,107
test_36@gmail.com,b95qCSx8rO7U0P0oE6RcvA,503
test_37@gmail.com,w53zi4ftVPYpqKTQUoxfKw,254
test_38@gmail.com,uyFiGMNqQo-nfBX5jY5ZOA,20
test_39@gmail.com,KPsyZ9KQiXktdGK2jRaTwQ,301
test_40@gmail.com,GfCFvRsJfXXgPD1wfrI9wA,644
test_41@gmail.com,e7gOaF5-tH7I3NocgLnhAA,21507
test_42@gmail.com,https://www.youtube.com/channel/UCjXe6LuyALURdEdRBOn8C5A,286
test_43@gmail.com,cLDyZ4ESTq6TQGbc2M1Zig,"112"
test_44@gmail.com,-Zh14hU-5p58lilWNwyQlg,33
test_45@gmail.com,YLCka_OXQZtoBJZ5pW9sFg,31
test_46@gmail.com,_lpDjhfkyaAr1Fd6AoMXQw,100
test_47@gmail.com,EL6PQjvKuk2-6sTaUmub8A,89
test_48@gmail.com,sbo6gAIwSELM1vApwRw4ng,244
test_49@gmail.com,UCX0ZEkd41kOTZ_2qRHViSQw,54
test_50@gmail.com,http://www.youtube.com/channel/UCsR5ZMY4gyAuCUTMkxPocrQ,4
test_51@gmail.com,http://www.youtube.com/channel/UCv3jmHLil11QvVzXxm18KHg,59
test_52@gmail.com,http://www.youtube.com/channel/UChJbZilh7YcrnajYJ-gsLqw,84
test_53@gmail.com,http://www.youtube.com/channel/UCCnms8EieLvB6oNLXBgIGNQ,"13,8902"
test_54@gmail.com,http://www.youtube.com/channel/UCtTIo7Mi2KuZTwoCys4Cdhw,1
test_55@gmail.com,https://www.youtube.com/channel/UCKjvSEotHjQFYjRwCWJGSdQ,5
test_56@gmail.com,youtube.com/channel/UCYVAY2qVpaIzVWA56nIkJtA,766
test_57@gmail.com,youtube.com/channel/UCPhv_Fz6YkjqbWI11IhScOQ,89
test_58@gmail.com,https://www.youtube.com/channel/UCiQ4x3FbxB9yPETGlvevbJQ,246
test_59@gmail.com,http://youtube.com/channel/UCseviT6lqkz1x5rxBoeRZ2g,29
test_60@gmail.com,UC054PSI_p4hjVVQUUWTxv4Q,19223
