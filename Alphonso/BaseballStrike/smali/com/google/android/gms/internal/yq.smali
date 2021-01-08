.class public final Lcom/google/android/gms/internal/yq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/yj;


# instance fields
.field private final zzcjt:Lcom/google/android/gms/internal/yj;

.field private zzcju:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/yj;J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/yq;->zzcju:J

    iput-object p1, p0, Lcom/google/android/gms/internal/yq;->zzcjt:Lcom/google/android/gms/internal/yj;

    iput-wide v0, p0, Lcom/google/android/gms/internal/yq;->zzcju:J

    return-void
.end method


# virtual methods
.method public final zzJC()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/yq;->zzcjt:Lcom/google/android/gms/internal/yj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yj;->zzJC()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/yq;->zzcju:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzay(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/yq;->zzcju:J

    return-void
.end method
