.class public Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;
.super Ljava/lang/Object;
.source "InMobiAdapterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 14
    .param p0, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const-string v11, "InMobiAdapter"

    const-string v12, "Bundle extras are null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .restart local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v1, ""

    .local v1, "city":Ljava/lang/String;
    const-string v9, ""

    .local v9, "state":Ljava/lang/String;
    const-string v2, ""

    .line 47
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 48
    .local v7, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, "value":Ljava/lang/String;
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->AREA_CODE:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 52
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 53
    invoke-static {v10}, Lcom/inmobi/sdk/InMobiSdk;->setAreaCode(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->INCOME:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 57
    :try_start_0
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 58
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/inmobi/sdk/InMobiSdk;->setIncome(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v8

    .line 61
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v12, "Please Set income properly"

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->AGE:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 68
    :try_start_1
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 69
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/inmobi/sdk/InMobiSdk;->setAge(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v8

    .line 72
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const-string v12, "Please Set age properly"

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->POSTAL_CODE:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 77
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 78
    invoke-static {v10}, Lcom/inmobi/sdk/InMobiSdk;->setPostalCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :cond_5
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->NATIONALITY:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 81
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 82
    invoke-static {v10}, Lcom/inmobi/sdk/InMobiSdk;->setNationality(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_6
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 85
    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 86
    invoke-static {v10}, Lcom/inmobi/sdk/InMobiSdk;->setLanguage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_7
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->CITY:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 89
    move-object v1, v10

    goto/16 :goto_0

    .line 91
    :cond_8
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->STATE:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 92
    move-object v9, v10

    goto/16 :goto_0

    .line 94
    :cond_9
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 95
    move-object v2, v10

    goto/16 :goto_0

    .line 97
    :cond_a
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->AGE_GROUP:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 98
    if-eqz v10, :cond_1

    .line 99
    invoke-static {v10}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getAgeGroup(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    move-result-object v0

    .line 100
    .local v0, "agegroup":Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
    if-eqz v0, :cond_1

    .line 101
    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->setAgeGroup(Lcom/inmobi/sdk/InMobiSdk$AgeGroup;)V

    goto/16 :goto_0

    .line 104
    .end local v0    # "agegroup":Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
    :cond_b
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->EDUCATION:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 105
    if-eqz v10, :cond_1

    .line 106
    invoke-static {v10}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getEducation(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Education;

    move-result-object v4

    .line 107
    .local v4, "education":Lcom/inmobi/sdk/InMobiSdk$Education;
    if-eqz v4, :cond_1

    .line 108
    invoke-static {v4}, Lcom/inmobi/sdk/InMobiSdk;->setEducation(Lcom/inmobi/sdk/InMobiSdk$Education;)V

    goto/16 :goto_0

    .line 111
    .end local v4    # "education":Lcom/inmobi/sdk/InMobiSdk$Education;
    :cond_c
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->ETHNICITY:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 112
    if-eqz v10, :cond_d

    .line 113
    invoke-static {v10}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getEthnicity(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    move-result-object v12

    invoke-static {v12}, Lcom/inmobi/sdk/InMobiSdk;->setEthnicity(Lcom/inmobi/sdk/InMobiSdk$Ethnicity;)V

    goto/16 :goto_0

    .line 115
    :cond_d
    sget-object v12, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->OTHER:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    invoke-static {v12}, Lcom/inmobi/sdk/InMobiSdk;->setEthnicity(Lcom/inmobi/sdk/InMobiSdk$Ethnicity;)V

    goto/16 :goto_0

    .line 117
    :cond_e
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->HOUSEHOLD_INCOME:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 118
    if-eqz v10, :cond_1

    .line 119
    invoke-static {v10}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getHouseHoldIncome(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    move-result-object v5

    .line 120
    .local v5, "householdincome":Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;
    if-eqz v5, :cond_1

    .line 121
    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setHouseHoldIncome(Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;)V

    goto/16 :goto_0

    .line 124
    .end local v5    # "householdincome":Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;
    :cond_f
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->LOGLEVEL:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 125
    if-eqz v10, :cond_10

    .line 126
    invoke-static {v10}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getLogLevel(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    move-result-object v12

    invoke-static {v12}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    goto/16 :goto_0

    .line 128
    :cond_10
    sget-object v12, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->NONE:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    invoke-static {v12}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    goto/16 :goto_0

    .line 130
    :cond_11
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->ImIdType_LOGIN:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 131
    sget-object v12, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    invoke-static {v12, v10}, Lcom/inmobi/sdk/InMobiSdk;->addIdType(Lcom/inmobi/sdk/InMobiSdk$ImIdType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_12
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->ImIdType_SESSION:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 134
    sget-object v12, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    invoke-static {v12, v10}, Lcom/inmobi/sdk/InMobiSdk;->addIdType(Lcom/inmobi/sdk/InMobiSdk$ImIdType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_13
    sget-object v12, Lcom/google/ads/mediation/inmobi/InMobiNetworkKeys;->INTERESTS:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 137
    invoke-static {v10}, Lcom/inmobi/sdk/InMobiSdk;->setInterests(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_14
    const-string v11, ""

    if-eq v1, v11, :cond_15

    const-string v11, ""

    if-eq v9, v11, :cond_15

    const-string v11, ""

    if-eq v2, v11, :cond_15

    .line 142
    invoke-static {v1, v9, v2}, Lcom/inmobi/sdk/InMobiSdk;->setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_15
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v11

    if-eqz v11, :cond_16

    .line 145
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v11

    invoke-static {v11}, Lcom/inmobi/sdk/InMobiSdk;->setLocation(Landroid/location/Location;)V

    .line 150
    :cond_16
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_17

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 152
    .local v3, "dob":Ljava/util/Calendar;
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 153
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Lcom/inmobi/sdk/InMobiSdk;->setYearOfBirth(I)V

    .line 157
    .end local v3    # "dob":Ljava/util/Calendar;
    :cond_17
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_18

    .line 158
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 171
    :cond_18
    :goto_1
    return-void

    .line 160
    :pswitch_0
    sget-object v11, Lcom/inmobi/sdk/InMobiSdk$Gender;->MALE:Lcom/inmobi/sdk/InMobiSdk$Gender;

    invoke-static {v11}, Lcom/inmobi/sdk/InMobiSdk;->setGender(Lcom/inmobi/sdk/InMobiSdk$Gender;)V

    goto :goto_1

    .line 164
    :pswitch_1
    sget-object v11, Lcom/inmobi/sdk/InMobiSdk$Gender;->FEMALE:Lcom/inmobi/sdk/InMobiSdk$Gender;

    invoke-static {v11}, Lcom/inmobi/sdk/InMobiSdk;->setGender(Lcom/inmobi/sdk/InMobiSdk$Gender;)V

    goto :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getAgeGroup(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->ABOVE_55:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->ABOVE_55:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 192
    :goto_0
    return-object v0

    .line 177
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BELOW_18:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BELOW_18:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    goto :goto_0

    .line 180
    :cond_1
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_18_AND_20:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_18_AND_20:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    goto :goto_0

    .line 183
    :cond_2
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_21_AND_24:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_21_AND_24:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    goto :goto_0

    .line 186
    :cond_3
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_25_AND_34:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_25_AND_34:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    goto :goto_0

    .line 189
    :cond_4
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_35_AND_54:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_35_AND_54:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    goto :goto_0

    .line 192
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEducation(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Education;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->EDUCATION_COLLEGEORGRADUATE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->COLLEGE_OR_GRADUATE:Lcom/inmobi/sdk/InMobiSdk$Education;

    .line 222
    :goto_0
    return-object v0

    .line 216
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->EDUCATION_HIGHSCHOOLORLESS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->HIGH_SCHOOL_OR_LESS:Lcom/inmobi/sdk/InMobiSdk$Education;

    goto :goto_0

    .line 219
    :cond_1
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->EDUCATION_POSTGRADUATEORABOVE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Education;->POST_GRADUATE_OR_ABOVE:Lcom/inmobi/sdk/InMobiSdk$Education;

    goto :goto_0

    .line 222
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEthnicity(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Ethnicity;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->ETHNICITY_AFRICAN_AMERICAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->AFRICAN_AMERICAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    .line 209
    :goto_0
    return-object v0

    .line 199
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->ETHNICITY_ASIAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->ASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->ETHNICITY_CAUCASIAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->CAUCASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    goto :goto_0

    .line 205
    :cond_2
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->ETHNICITY_HISPANIC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->HISPANIC:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    goto :goto_0

    .line 209
    :cond_3
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->OTHER:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    goto :goto_0
.end method

.method private static getHouseHoldIncome(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 226
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->ABOVE_USD_150K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->ABOVE_USD_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 256
    :goto_0
    return-object v0

    .line 229
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BELOW_USD_5K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BELOW_USD_5K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 232
    :cond_1
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_100K_AND_150K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_100K_AND_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 235
    :cond_2
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_10K_AND_15K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_10K_AND_15K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 238
    :cond_3
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_15K_AND_20K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_15K_AND_20K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 241
    :cond_4
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_20K_AND_25K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_20K_AND_25K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 244
    :cond_5
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_25K_AND_50K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_25K_AND_50K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 247
    :cond_6
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_50K_AND_75K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_50K_AND_75K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 250
    :cond_7
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_5K_AND_10K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 251
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_5K_AND_10K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 253
    :cond_8
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->BETWEEN_USD_75K_AND_100K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 254
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_75K_AND_100K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    goto :goto_0

    .line 256
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLogLevel(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$LogLevel;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->LOGLEVEL_DEBUG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->DEBUG:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    .line 269
    :goto_0
    return-object v0

    .line 263
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->LOGLEVEL_ERROR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->ERROR:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    goto :goto_0

    .line 266
    :cond_1
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiNetworkValues;->LOGLEVEL_NONE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->NONE:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    goto :goto_0

    .line 269
    :cond_2
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->NONE:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    goto :goto_0
.end method

.method public static isPerformanceAd(Lcom/inmobi/ads/InMobiNative;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "imNativeAd"    # Lcom/inmobi/ads/InMobiNative;

    .prologue
    .line 285
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 287
    .local v1, "isInMobiPerformanceAd":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiNative;->getAdContent()Ljava/lang/Object;

    move-result-object v4

    .line 290
    .local v4, "pubContent":Ljava/lang/Object;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "payLoad":Lorg/json/JSONObject;
    const-string v5, "package_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 300
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "payLoad":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, " [ InMobiAdapterUtils : Error parsing pubContent ] : "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static mandatoryChecking(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/mediation/inmobi/MandatoryParamException;
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "x":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    new-instance v0, Lcom/google/ads/mediation/inmobi/MandatoryParamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mandatory param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/inmobi/MandatoryParamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    return-object p0
.end method
