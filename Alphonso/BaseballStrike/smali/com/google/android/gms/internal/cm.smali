.class public final Lcom/google/android/gms/internal/cm;
.super Ljava/lang/Object;


# instance fields
.field private final zzbIG:Lcom/google/android/gms/internal/da;

.field private final zzbKG:[B

.field private final zzbKH:J

.field private final zzbKI:Lcom/google/android/gms/internal/by;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/by;[BLcom/google/android/gms/internal/da;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cm;->zzbKI:Lcom/google/android/gms/internal/by;

    iput-object p2, p0, Lcom/google/android/gms/internal/cm;->zzbKG:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/cm;->zzbIG:Lcom/google/android/gms/internal/da;

    iput-wide p4, p0, Lcom/google/android/gms/internal/cm;->zzbKH:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/da;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/internal/by;[BLcom/google/android/gms/internal/da;J)V

    return-void
.end method


# virtual methods
.method public final zzCS()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->zzbKG:[B

    return-object v0
.end method

.method public final zzCT()Lcom/google/android/gms/internal/by;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->zzbKI:Lcom/google/android/gms/internal/by;

    return-object v0
.end method

.method public final zzCU()Lcom/google/android/gms/internal/da;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->zzbIG:Lcom/google/android/gms/internal/da;

    return-object v0
.end method

.method public final zzCV()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cm;->zzbKH:J

    return-wide v0
.end method
