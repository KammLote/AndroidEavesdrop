.class final Lcom/google/android/gms/internal/zzama;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzalx;

.field private synthetic zzafF:Ljava/lang/String;

.field private synthetic zzafG:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalx;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzama;->zzafD:Lcom/google/android/gms/internal/zzalx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzama;->zzafF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzama;->zzafG:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzama;->zzafD:Lcom/google/android/gms/internal/zzalx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalx;->zza(Lcom/google/android/gms/internal/zzalx;)Lcom/google/android/gms/internal/zzamu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzama;->zzafF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamu;->zzbw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzama;->zzafG:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzama;->zzafG:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
