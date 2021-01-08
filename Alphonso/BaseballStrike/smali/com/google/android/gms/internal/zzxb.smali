.class public final Lcom/google/android/gms/internal/zzxb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzxc;


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
.method public final zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzajl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/zzajl",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzajg;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzajg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
