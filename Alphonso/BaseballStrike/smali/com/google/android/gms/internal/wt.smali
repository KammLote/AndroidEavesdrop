.class final Lcom/google/android/gms/internal/wt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wu;


# instance fields
.field private final zzcie:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/xf;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/yp;->zzn(Lcom/google/android/gms/internal/xf;)J

    move-result-wide v0

    const-wide/16 v2, 0x200

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/wt;->zzcie:J

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ws;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ws;->zzIT()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/wt;->zzcie:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ws;->zzIU()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ws;->zzIU()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHe()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIJ()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
