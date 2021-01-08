.class public final Lcom/google/android/gms/internal/ck;
.super Ljava/lang/Object;


# instance fields
.field private zzbKD:Lcom/google/android/gms/internal/by;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->zzbKD:Lcom/google/android/gms/internal/by;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->zzbKD:Lcom/google/android/gms/internal/by;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzCO()Lcom/google/android/gms/internal/by;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->zzbKD:Lcom/google/android/gms/internal/by;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/by;)Lcom/google/android/gms/internal/ck;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->zzbKD:Lcom/google/android/gms/internal/by;

    return-object p0
.end method
