.class final Lcom/google/android/gms/internal/zzcwm$zzb;
.super Lcom/google/android/gms/internal/zzcvd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcwm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzbJn:Lcom/google/android/gms/internal/zzcwm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcwm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwm$zzb;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcvd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzcwm;Lcom/google/android/gms/internal/zzcwn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcwm$zzb;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    return-void
.end method


# virtual methods
.method public final zza(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm$zzb;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zzf(Lcom/google/android/gms/internal/zzcwm;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcwy;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzcwy;-><init>(Lcom/google/android/gms/internal/zzcwm$zzb;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
