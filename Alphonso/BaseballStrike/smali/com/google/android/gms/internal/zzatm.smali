.class final Lcom/google/android/gms/internal/zzatm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/DetectedActivityResult;


# instance fields
.field private synthetic zzaok:Lcom/google/android/gms/internal/zzauc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatl;Lcom/google/android/gms/internal/zzauc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatm;->zzaok:Lcom/google/android/gms/internal/zzauc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatm;->zzaok:Lcom/google/android/gms/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzauc;->zznb()Lcom/google/android/gms/internal/zzath;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatm;->zzaok:Lcom/google/android/gms/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzauc;->zznb()Lcom/google/android/gms/internal/zzath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzath;->getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    goto :goto_0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatm;->zzaok:Lcom/google/android/gms/internal/zzauc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzauc;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
