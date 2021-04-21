.class public Lcom/dumadugames/unitynotification/UnityNotificationManager;
.super Landroid/content/BroadcastReceiver;
.source "UnityNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static CancelNotification(I)V
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 134
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 135
    .local v1, "currentActivity":Landroid/app/Activity;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 136
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/dumadugames/unitynotification/UnityNotificationManager;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 138
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 144
    :cond_0
    return-void
.end method

.method public static SetNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p0, "id"    # I
    .param p1, "delayMs"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "sound"    # I
    .param p7, "vibrate"    # I
    .param p8, "lights"    # I
    .param p9, "largeIconResource"    # Ljava/lang/String;
    .param p10, "app_icon"    # Ljava/lang/String;
    .param p11, "bgColor"    # I
    .param p12, "executeMode"    # I
    .param p13, "unityClass"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 23
    .local v3, "currentActivity":Landroid/app/Activity;
    const-string v5, "alarm"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 24
    .local v2, "am":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/dumadugames/unitynotification/UnityNotificationManager;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "ticker"

    invoke-virtual {v4, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v5, "title"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v5, "message"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v5, "id"

    invoke-virtual {v4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string v5, "color"

    move/from16 v0, p11

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string v6, "sound"

    const/4 v5, 0x1

    if-ne p6, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    const-string v6, "vibrate"

    const/4 v5, 0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    const-string v6, "lights"

    const/4 v5, 0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    const-string v5, "l_icon"

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v5, "s_icon"

    move-object/from16 v0, p10

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v5, "activity"

    move-object/from16 v0, p13

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_5

    .line 38
    const/4 v5, 0x2

    move/from16 v0, p12

    if-ne v0, v5, :cond_3

    .line 39
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    const/4 v8, 0x0

    invoke-static {v3, p0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 47
    :goto_3
    return-void

    .line 30
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 32
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 40
    :cond_3
    const/4 v5, 0x1

    move/from16 v0, p12

    if-ne v0, v5, :cond_4

    .line 41
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    const/4 v8, 0x0

    invoke-static {v3, p0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_3

    .line 43
    :cond_4
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    const/4 v8, 0x0

    invoke-static {v3, p0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3

    .line 46
    :cond_5
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    const/4 v8, 0x0

    invoke-static {v3, p0, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3
.end method

.method public static SetRepeatingNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p0, "id"    # I
    .param p1, "delay"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;
    .param p6, "rep"    # J
    .param p8, "sound"    # I
    .param p9, "vibrate"    # I
    .param p10, "lights"    # I
    .param p11, "largeIconResource"    # Ljava/lang/String;
    .param p12, "app_icon"    # Ljava/lang/String;
    .param p13, "bgColor"    # I
    .param p14, "unityClass"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v9, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 52
    .local v9, "currentActivity":Landroid/app/Activity;
    const-string v3, "alarm"

    invoke-virtual {v9, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 53
    .local v2, "am":Landroid/app/AlarmManager;
    new-instance v10, Landroid/content/Intent;

    const-class v3, Lcom/dumadugames/unitynotification/UnityNotificationManager;

    invoke-direct {v10, v9, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v10, "intent":Landroid/content/Intent;
    const-string v3, "ticker"

    move-object/from16 v0, p5

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v3, "title"

    invoke-virtual {v10, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v3, "message"

    invoke-virtual {v10, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v3, "id"

    invoke-virtual {v10, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v3, "color"

    move/from16 v0, p13

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v4, "sound"

    const/4 v3, 0x1

    move/from16 v0, p8

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string v4, "vibrate"

    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const-string v4, "lights"

    const/4 v3, 0x1

    move/from16 v0, p10

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string v3, "l_icon"

    move-object/from16 v0, p11

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v3, "s_icon"

    move-object/from16 v0, p12

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v3, "activity"

    move-object/from16 v0, p14

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    const/4 v6, 0x0

    invoke-static {v9, p0, v10, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-wide/from16 v6, p6

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 66
    return-void

    .line 59
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 61
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    const-string v23, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 72
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    const-string v23, "ticker"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 73
    .local v18, "ticker":Ljava/lang/String;
    const-string v23, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 74
    .local v19, "title":Ljava/lang/String;
    const-string v23, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "message":Ljava/lang/String;
    const-string v23, "s_icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 76
    .local v16, "s_icon":Ljava/lang/String;
    const-string v23, "l_icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "l_icon":Ljava/lang/String;
    const-string v23, "color"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, "color":I
    const-string v23, "activity"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 79
    .local v20, "unityClass":Ljava/lang/String;
    const-string v23, "sound"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 80
    .local v17, "sound":Ljava/lang/Boolean;
    const-string v23, "vibrate"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 81
    .local v22, "vibrate":Ljava/lang/Boolean;
    const-string v23, "lights"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 82
    .local v10, "lights":Ljava/lang/Boolean;
    const-string v23, "id"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 84
    .local v8, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 86
    .local v15, "res":Landroid/content/res/Resources;
    const/16 v21, 0x0

    .line 89
    .local v21, "unityClassActivity":Ljava/lang/Class;
    :try_start_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 95
    :goto_0
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v13, "notificationIntent":Landroid/content/Intent;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 97
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v4, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v23

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    .line 101
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v23

    .line 102
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    .line 103
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 105
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 106
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 108
    :cond_0
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1

    .line 109
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 111
    :cond_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2

    .line 112
    const-string v23, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 114
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_3

    .line 115
    const-string v23, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v15, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 117
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 118
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 120
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 121
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 125
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 126
    const v23, -0xff0100

    const/16 v24, 0xbb8

    const/16 v25, 0xbb8

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 128
    :cond_6
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 129
    .local v12, "notification":Landroid/app/Notification;
    invoke-virtual {v14, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 130
    return-void

    .line 91
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "notificationIntent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 92
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    :array_0
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method
