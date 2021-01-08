.class public final Lcom/google/android/gms/internal/zzaaa;
.super Lcom/google/android/gms/internal/zzzx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajo;Lcom/google/android/gms/internal/zzzv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzajo",
            "<",
            "Lcom/google/android/gms/internal/zzaad;",
            ">;",
            "Lcom/google/android/gms/internal/zzzv;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzzx;-><init>(Lcom/google/android/gms/internal/zzajo;Lcom/google/android/gms/internal/zzzv;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaa;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzgA()V
    .locals 0

    return-void
.end method

.method public final zzgB()Lcom/google/android/gms/internal/zzaal;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/zzmb;

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzBZ:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzmb;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zzabk;->zzgF()Lcom/google/android/gms/internal/zzabk;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzabl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabk;)Lcom/google/android/gms/internal/zzabl;

    move-result-object v0

    return-object v0
.end method
