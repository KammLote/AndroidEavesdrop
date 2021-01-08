.class public Lcom/google/android/gms/tagmanager/TagManagerApiImpl;
.super Lcom/google/android/gms/tagmanager/zzcr;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzbGX:Lcom/google/android/gms/internal/zzcwm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcr;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/zzcwm;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbGX:Lcom/google/android/gms/internal/zzcwm;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbGX:Lcom/google/android/gms/internal/zzcwm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcwm;->zze([Ljava/lang/String;)V

    return-void
.end method

.method public preview(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Deprecated. Please use previewIntent instead."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V
    .locals 4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/google/android/gms/internal/zzcwm;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwm;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbGX:Lcom/google/android/gms/internal/zzcwm;

    new-instance v2, Lcom/google/android/gms/internal/zzcvp;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbGX:Lcom/google/android/gms/internal/zzcwm;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzcvp;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/gms/internal/zzcwm;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcvp;->zzCu()V

    return-void
.end method
