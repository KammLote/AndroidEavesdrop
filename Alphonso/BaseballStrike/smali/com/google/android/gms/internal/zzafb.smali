.class public final Lcom/google/android/gms/internal/zzafb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzafd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzaad;)Lcom/google/android/gms/internal/zzajl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad;",
            ")",
            "Lcom/google/android/gms/internal/zzajl",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzajg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaad;->zzSB:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzajg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzajl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/zzajl",
            "<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzajf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajf;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaix;->zzY(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzafc;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzafc;-><init>(Lcom/google/android/gms/internal/zzafb;Landroid/content/Context;Lcom/google/android/gms/internal/zzajf;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzags;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajl;

    :cond_0
    return-object v0
.end method
