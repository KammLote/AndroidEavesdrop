.class final Lcom/google/android/gms/internal/jp;
.super Lcom/google/android/gms/internal/ki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ki",
        "<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/android/gms/internal/lk;",
        ">;"
    }
.end annotation


# instance fields
.field private zzbWA:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki;-><init>(I)V

    const-string v0, "provider cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp;->zzbWA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->zzbWK:Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->zzbWA:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->zzbWJ:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->zzEG()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/jp;->zzbWI:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/kb;->zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final zzEK()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->zzbVX:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->zzbWS:Lcom/google/android/gms/internal/ku;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/lr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->zzbWL:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/lk;

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->zzbWR:Lcom/google/android/gms/internal/kw;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/lk;->zza(Lcom/google/android/gms/internal/kw;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lo;-><init>(Lcom/google/android/gms/internal/lr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jp;->zzV(Ljava/lang/Object;)V

    return-void
.end method
