.class final Lcom/google/android/gms/internal/zzazy;
.super Lcom/google/android/gms/internal/zzbax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbax",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/zzbaa;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzazM:Lcom/google/android/gms/internal/zzazt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazt;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzazm;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzbax;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazy;->zzazM:Lcom/google/android/gms/internal/zzazt;

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbax;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/zzazz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzazz;-><init>(Lcom/google/android/gms/internal/zzazy;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazy;->zzazM:Lcom/google/android/gms/internal/zzazt;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazu:Lcom/google/android/gms/internal/zzazq;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazB:Lcom/google/android/gms/internal/aea;

    iget-object v2, v2, Lcom/google/android/gms/internal/aea;->zzctI:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazB:Lcom/google/android/gms/internal/aea;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzazt;->zzazu:Lcom/google/android/gms/internal/zzazq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzazq;->zzoU()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/aea;->zzctI:[B

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazL:Lcom/google/android/gms/internal/zzazq;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazB:Lcom/google/android/gms/internal/aea;

    iget-object v2, v2, Lcom/google/android/gms/internal/aea;->zzctP:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazB:Lcom/google/android/gms/internal/aea;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzazt;->zzazL:Lcom/google/android/gms/internal/zzazq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzazq;->zzoU()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/aea;->zzctP:[B

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazB:Lcom/google/android/gms/internal/aea;

    invoke-static {v2}, Lcom/google/android/gms/internal/adg;->zzc(Lcom/google/android/gms/internal/adg;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzazt;->zzazF:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaa;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbae;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazy;->zzazM:Lcom/google/android/gms/internal/zzazt;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbae;->zza(Lcom/google/android/gms/internal/zzbac;Lcom/google/android/gms/internal/zzazt;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ClearcutLoggerApiImpl"

    const-string v2, "derived ClearcutLogger.MessageProducer "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "MessageProducer"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzazy;->zzr(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
