.class public final Lcom/google/android/gms/internal/mc;
.super Lcom/google/android/gms/internal/ma;


# instance fields
.field private final zzaaS:Ljava/lang/Throwable;

.field private final zzbXU:Lcom/google/android/gms/internal/mo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/Throwable;Lcom/google/android/gms/internal/mo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crash/FirebaseCrash$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/mo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ma;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/mc;->zzaaS:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/android/gms/internal/mc;->zzbXU:Lcom/google/android/gms/internal/mo;

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "Failed to report caught exception"

    return-object v0
.end method

.method public final bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->run()V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/mi;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/mi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mc;->zzbXU:Lcom/google/android/gms/internal/mo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mc;->zzbXU:Lcom/google/android/gms/internal/mo;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mo;->zza(ZJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mc;->zzaaS:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mi;->zzL(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
