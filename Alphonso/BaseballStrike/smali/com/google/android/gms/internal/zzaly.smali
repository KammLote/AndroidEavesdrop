.class final Lcom/google/android/gms/internal/zzaly;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafC:I

.field private synthetic zzafD:Lcom/google/android/gms/internal/zzalx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalx;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaly;->zzafD:Lcom/google/android/gms/internal/zzalx;

    iput p2, p0, Lcom/google/android/gms/internal/zzaly;->zzafC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafD:Lcom/google/android/gms/internal/zzalx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalx;->zza(Lcom/google/android/gms/internal/zzalx;)Lcom/google/android/gms/internal/zzamu;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzaly;->zzafC:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzamu;->zzr(J)V

    return-void
.end method
