.class public final Lcom/google/android/gms/internal/zzazb;
.super Lcom/google/android/gms/internal/zzayz;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final zzaza:Lcom/google/android/gms/internal/zzaze;

.field private synthetic zzazb:Lcom/google/android/gms/internal/zzaza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaza;Lcom/google/android/gms/internal/zzaze;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzayz;-><init>(Lcom/google/android/gms/internal/zzayv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazb;->zzaza:Lcom/google/android/gms/internal/zzaze;

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zza(Lcom/google/android/gms/internal/zzayv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zza(IILandroid/view/Surface;)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "onConnected"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzaza:Lcom/google/android/gms/internal/zzaze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaze;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "Unable to get the display manager"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayv;->zza(Lcom/google/android/gms/internal/zzayv;)V

    if-ge p1, p2, :cond_1

    move v1, p1

    :goto_1
    mul-int/lit16 v1, v1, 0x140

    div-int/lit16 v4, v1, 0x438

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    const-string v1, "private_display"

    const/4 v6, 0x2

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zzayv;->zza(Lcom/google/android/gms/internal/zzayv;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zzd(Lcom/google/android/gms/internal/zzayv;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "Unable to create virtual display"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zzd(Lcom/google/android/gms/internal/zzayv;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "Virtual display does not have a display"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzaza:Lcom/google/android/gms/internal/zzaze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayv;->zzd(Lcom/google/android/gms/internal/zzayv;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaze;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazi;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/zzazi;->zza(Lcom/google/android/gms/internal/zzazg;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "Unable to provision the route\'s new virtual Display"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final zzoR()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "onConnectedWithDisplay"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zzd(Lcom/google/android/gms/internal/zzayv;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "There is no virtual display"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zzd(Lcom/google/android/gms/internal/zzayv;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v2, Lcom/google/android/gms/internal/zzazd;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzazd;-><init>(Landroid/view/Display;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "Virtual display no longer has a display"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazb;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method
