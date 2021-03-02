.class Ltv/alphonso/service/LocationService$LocationListener;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/service/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/LocationService;


# direct methods
.method public constructor <init>(Ltv/alphonso/service/LocationService;Ljava/lang/String;)V
    .locals 3
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 139
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 97
    const/4 v10, 0x1

    .line 133
    :goto_0
    return v10

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 102
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x493e0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 103
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x493e0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 104
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 108
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 109
    const/4 v10, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 103
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 104
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 111
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 112
    const/4 v10, 0x0

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 117
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 118
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 119
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 122
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 122
    invoke-direct {p0, v10, v11}, Ltv/alphonso/service/LocationService$LocationListener;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 126
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 127
    const/4 v10, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 118
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 119
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 128
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 129
    const/4 v10, 0x1

    goto :goto_0

    .line 130
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 131
    const/4 v10, 0x1

    goto :goto_0

    .line 133
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 47
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v0}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_4

    .line 52
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating current location from provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v0, p1}, Ltv/alphonso/service/LocationService;->access$102(Ltv/alphonso/service/LocationService;Landroid/location/Location;)Landroid/location/Location;

    .line 57
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v0}, Ltv/alphonso/service/LocationService;->access$200(Ltv/alphonso/service/LocationService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v1}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setLocation(Landroid/content/Context;Landroid/location/Location;)V

    .line 59
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v2}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    iget-object v1, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v1}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/service/LocationService;->sendLocationUpdate(Landroid/location/Location;)V

    .line 87
    :cond_3
    :goto_0
    return-void

    .line 64
    :cond_4
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v0}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ltv/alphonso/service/LocationService$LocationListener;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_5

    .line 67
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating current location from provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_5
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v0}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 71
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v0}, Ltv/alphonso/service/LocationService;->access$200(Ltv/alphonso/service/LocationService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v1}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setLocation(Landroid/content/Context;Landroid/location/Location;)V

    .line 73
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_6

    .line 74
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v2}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    iget-object v1, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v1}, Ltv/alphonso/service/LocationService;->access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/alphonso/service/LocationService;->sendLocationUpdate(Landroid/location/Location;)V

    goto :goto_0

    .line 83
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Ltv/alphonso/service/LocationService$LocationListener;->this$0:Ltv/alphonso/service/LocationService;

    invoke-static {v0}, Ltv/alphonso/service/LocationService;->access$300(Ltv/alphonso/service/LocationService;)V

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 161
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Ltv/alphonso/service/LocationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-void
.end method
