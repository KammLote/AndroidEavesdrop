.class public abstract Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;


# instance fields
.field private zzBO:I

.field protected final zzbHM:Lcom/google/android/gms/internal/zzcun;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final zzbKr:Lcom/google/android/gms/internal/ck;

.field private zzbKs:Lcom/google/android/gms/internal/cg;

.field private zzvy:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/zzcun;)V
    .locals 6
    .param p4    # Lcom/google/android/gms/internal/zzcun;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cb;-><init>(ILcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/zzcun;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/zzcun;Lcom/google/android/gms/common/util/zze;)V
    .locals 1
    .param p4    # Lcom/google/android/gms/internal/zzcun;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ck;

    iput-object v0, p0, Lcom/google/android/gms/internal/cb;->zzbKr:Lcom/google/android/gms/internal/ck;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/cb;->zzBO:I

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cg;

    iput-object v0, p0, Lcom/google/android/gms/internal/cb;->zzbKs:Lcom/google/android/gms/internal/cg;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/cb;->zzvy:Lcom/google/android/gms/common/util/zze;

    iput-object p4, p0, Lcom/google/android/gms/internal/cb;->zzbHM:Lcom/google/android/gms/internal/zzcun;

    return-void
.end method

.method private final zzw([B)Lcom/google/android/gms/internal/cl;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cb;->zzbKs:Lcom/google/android/gms/internal/cg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/cg;->zzx([B)Lcom/google/android/gms/internal/cl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Parsed resource from is null"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/bz; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "Resource data is corrupted"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/cl;)V
.end method

.method public final zzk(II)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->zzbHM:Lcom/google/android/gms/internal/zzcun;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->zzbHM:Lcom/google/android/gms/internal/zzcun;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcun;->zzAU()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->zzbKr:Lcom/google/android/gms/internal/ck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown reason"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to fetch the container resource for the container \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cl;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cb;->zza(Lcom/google/android/gms/internal/cl;)V

    return-void

    :pswitch_0
    const-string v0, "Resource not available"

    goto :goto_0

    :pswitch_1
    const-string v0, "IOError"

    goto :goto_0

    :pswitch_2
    const-string v0, "Server error"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final zzv([B)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cb;->zzw([B)Lcom/google/android/gms/internal/cl;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->zzbHM:Lcom/google/android/gms/internal/zzcun;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/cb;->zzBO:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->zzbHM:Lcom/google/android/gms/internal/zzcun;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcun;->zzAV()V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/cl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/cl;->zzCP()Lcom/google/android/gms/internal/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->zzCU()Lcom/google/android/gms/internal/da;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/cm;

    iget-object v1, p0, Lcom/google/android/gms/internal/cb;->zzbKr:Lcom/google/android/gms/internal/ck;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cb;->zzvy:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/internal/by;[BLcom/google/android/gms/internal/da;J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/cl;->zzCQ()Lcom/google/android/gms/internal/di;

    move-result-object v2

    new-instance v1, Lcom/google/android/gms/internal/cl;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    iget v4, p0, Lcom/google/android/gms/internal/cb;->zzBO:I

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/di;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cb;->zza(Lcom/google/android/gms/internal/cl;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cl;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    iget v2, p0, Lcom/google/android/gms/internal/cb;->zzBO:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    goto :goto_0
.end method
