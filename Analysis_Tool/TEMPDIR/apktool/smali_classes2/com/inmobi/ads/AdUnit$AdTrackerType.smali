.class public final enum Lcom/inmobi/ads/AdUnit$AdTrackerType;
.super Ljava/lang/Enum;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdTrackerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/AdUnit$AdTrackerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/AdUnit$AdTrackerType;

.field public static final enum AD_TRACKER_TYPE_DV:Lcom/inmobi/ads/AdUnit$AdTrackerType;

.field public static final enum AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

.field public static final enum AD_TRACKER_TYPE_INMOBI:Lcom/inmobi/ads/AdUnit$AdTrackerType;

.field public static final enum AD_TRACKER_TYPE_MOAT:Lcom/inmobi/ads/AdUnit$AdTrackerType;

.field public static final enum AD_TRACKER_TYPE_NONE:Lcom/inmobi/ads/AdUnit$AdTrackerType;

.field public static final enum AD_TRACKER_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdTrackerType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    const-string v1, "AD_TRACKER_TYPE_NONE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/AdUnit$AdTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_NONE:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    .line 117
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    const-string v1, "AD_TRACKER_TYPE_MOAT"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/AdUnit$AdTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_MOAT:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    .line 118
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    const-string v1, "AD_TRACKER_TYPE_INMOBI"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/AdUnit$AdTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_INMOBI:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    .line 119
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    const-string v1, "AD_TRACKER_TYPE_IAS"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/AdUnit$AdTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    .line 120
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    const-string v1, "AD_TRACKER_TYPE_DV"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/ads/AdUnit$AdTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_DV:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    .line 121
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    const-string v1, "AD_TRACKER_TYPE_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$AdTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    .line 115
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/inmobi/ads/AdUnit$AdTrackerType;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_NONE:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_MOAT:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_INMOBI:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_DV:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdTrackerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/AdUnit$AdTrackerType;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/AdUnit$AdTrackerType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v0}, [Lcom/inmobi/ads/AdUnit$AdTrackerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/AdUnit$AdTrackerType;

    return-object v0
.end method
