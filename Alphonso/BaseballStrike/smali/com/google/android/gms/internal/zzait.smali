.class public final Lcom/google/android/gms/internal/zzait;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# static fields
.field private static zzaax:Lcom/google/android/gms/internal/zzait;


# instance fields
.field zzJR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzait;->zzaax:Lcom/google/android/gms/internal/zzait;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzif()Lcom/google/android/gms/internal/zzait;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzait;->zzaax:Lcom/google/android/gms/internal/zzait;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzait;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzait;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzait;->zzaax:Lcom/google/android/gms/internal/zzait;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzait;->zzaax:Lcom/google/android/gms/internal/zzait;

    return-object v0
.end method
