.class public final Lcom/google/android/gms/internal/zzapl;
.super Ljava/lang/Object;


# instance fields
.field private zzajE:Lcom/google/android/gms/internal/zzaoy;

.field private zzajF:J

.field private zzajG:I

.field private zzajH:Lcom/google/android/gms/internal/zzaov;

.field private zzajI:Z

.field private zzajJ:I

.field private zzajK:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzapl;->zzajF:J

    iput v2, p0, Lcom/google/android/gms/internal/zzapl;->zzajG:I

    iput v2, p0, Lcom/google/android/gms/internal/zzapl;->zzajJ:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzapl;->zzajI:Z

    iput v3, p0, Lcom/google/android/gms/internal/zzapl;->zzajK:I

    return-void
.end method


# virtual methods
.method public final zzM(Z)Lcom/google/android/gms/internal/zzapl;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzapl;->zzajI:Z

    return-object p0
.end method

.method public final zzS(I)Lcom/google/android/gms/internal/zzapl;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzapl;->zzajG:I

    return-object p0
.end method

.method public final zzT(I)Lcom/google/android/gms/internal/zzapl;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzapl;->zzajK:I

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaov;)Lcom/google/android/gms/internal/zzapl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapl;->zzajH:Lcom/google/android/gms/internal/zzaov;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaoy;)Lcom/google/android/gms/internal/zzapl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapl;->zzajE:Lcom/google/android/gms/internal/zzaoy;

    return-object p0
.end method

.method public final zzmm()Lcom/google/android/gms/internal/zzapk;
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzapk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapl;->zzajE:Lcom/google/android/gms/internal/zzaoy;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzapl;->zzajF:J

    iget v4, p0, Lcom/google/android/gms/internal/zzapl;->zzajG:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzapl;->zzajH:Lcom/google/android/gms/internal/zzaov;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzapl;->zzajI:Z

    iget v8, p0, Lcom/google/android/gms/internal/zzapl;->zzajJ:I

    iget v9, p0, Lcom/google/android/gms/internal/zzapl;->zzajK:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzapk;-><init>(Lcom/google/android/gms/internal/zzaoy;JILjava/lang/String;Lcom/google/android/gms/internal/zzaov;ZII)V

    return-object v0
.end method

.method public final zzv(J)Lcom/google/android/gms/internal/zzapl;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzapl;->zzajF:J

    return-object p0
.end method
