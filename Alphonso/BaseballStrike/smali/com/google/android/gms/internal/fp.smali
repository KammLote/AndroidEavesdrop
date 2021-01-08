.class public final Lcom/google/android/gms/internal/fp;
.super Lcom/google/android/gms/internal/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fa",
        "<",
        "Lcom/google/android/gms/internal/ff;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbNT:Lcom/google/android/gms/internal/fq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fq;)V
    .locals 1

    const-string v0, "TextNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/fp;->zzbNT:Lcom/google/android/gms/internal/fq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fp;->zzDQ()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final zzDN()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fp;->zzDQ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ff;->zzDR()V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zzc;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzcV(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->zzbNT:Lcom/google/android/gms/internal/fq;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fh;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/fq;)Lcom/google/android/gms/internal/ff;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/fh;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/fh;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fi;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/fb;Lcom/google/android/gms/internal/fl;)[Lcom/google/android/gms/internal/fj;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fp;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Lcom/google/android/gms/internal/fj;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fp;->zzDQ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ff;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/ff;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/fb;Lcom/google/android/gms/internal/fl;)[Lcom/google/android/gms/internal/fj;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextNativeHandle"

    const-string v2, "Error calling native text recognizer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v3, [Lcom/google/android/gms/internal/fj;

    goto :goto_0
.end method
