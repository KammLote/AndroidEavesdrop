.class final Lcom/google/android/gms/internal/zzcin;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtk:Lcom/google/android/gms/internal/zzcjh;

.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcic;

.field private synthetic zzbue:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcic;ZLcom/google/android/gms/internal/zzcjh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcic;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcin;->zzbue:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcin;->zzbtk:Lcom/google/android/gms/internal/zzcjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zzd(Lcom/google/android/gms/internal/zzcic;)Lcom/google/android/gms/internal/zzcfc;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcic;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcin;->zzbue:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzcic;->zza(Lcom/google/android/gms/internal/zzcfc;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zze(Lcom/google/android/gms/internal/zzcic;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcin;->zzbtk:Lcom/google/android/gms/internal/zzcjh;

    goto :goto_1
.end method
