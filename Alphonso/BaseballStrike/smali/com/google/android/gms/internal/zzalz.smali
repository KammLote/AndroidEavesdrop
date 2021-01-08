.class final Lcom/google/android/gms/internal/zzalz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzalx;

.field private synthetic zzafE:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalx;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalz;->zzafD:Lcom/google/android/gms/internal/zzalx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzalz;->zzafE:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalz;->zzafD:Lcom/google/android/gms/internal/zzalx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalx;->zza(Lcom/google/android/gms/internal/zzalx;)Lcom/google/android/gms/internal/zzamu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamu;->zzld()V

    return-void
.end method
