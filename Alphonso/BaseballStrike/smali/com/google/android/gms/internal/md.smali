.class public final Lcom/google/android/gms/internal/md;
.super Lcom/google/android/gms/internal/ma;


# instance fields
.field private final zzbYg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crash/FirebaseCrash$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ma;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/md;->zzbYg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "Failed to log message"

    return-object v0
.end method

.method public final bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/ma;->run()V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/mi;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/mi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/md;->zzbYg:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mi;->log(Ljava/lang/String;)V

    return-void
.end method
