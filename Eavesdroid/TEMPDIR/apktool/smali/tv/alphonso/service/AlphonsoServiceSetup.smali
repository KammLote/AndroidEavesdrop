.class public Ltv/alphonso/service/AlphonsoServiceSetup;
.super Ljava/lang/Object;
.source "AlphonsoServiceSetup.java"


# instance fields
.field public mAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoServiceSetup;->mAppId:Ljava/lang/String;

    .line 11
    return-void
.end method
