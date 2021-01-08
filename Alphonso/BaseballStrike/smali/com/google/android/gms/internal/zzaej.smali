.class public final Lcom/google/android/gms/internal/zzaej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaet;


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
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzaah;)Lcom/google/android/gms/internal/zzaes;
    .locals 1

    iget-object v0, p3, Lcom/google/android/gms/internal/zzaah;->zzTJ:Lcom/google/android/gms/internal/zzaep;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaef;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaef;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzaah;)V

    goto :goto_0
.end method
