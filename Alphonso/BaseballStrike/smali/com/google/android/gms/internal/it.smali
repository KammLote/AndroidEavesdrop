.class final Lcom/google/android/gms/internal/it;
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
.field private zzakT:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private zzalO:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki;-><init>(I)V

    const-string v0, "email cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/it;->zzalO:Ljava/lang/String;

    const-string v0, "password cannot be null or empty"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/it;->zzakT:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/it;->zzbWK:Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/it;->zzalO:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/it;->zzakT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/it;->zzbWI:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/kb;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final zzEK()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/it;->zzbVX:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/it;->zzbWS:Lcom/google/android/gms/internal/ku;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/lr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/it;->zzbWL:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/lk;

    iget-object v2, p0, Lcom/google/android/gms/internal/it;->zzbWR:Lcom/google/android/gms/internal/kw;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/lk;->zza(Lcom/google/android/gms/internal/kw;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lo;-><init>(Lcom/google/android/gms/internal/lr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/it;->zzV(Ljava/lang/Object;)V

    return-void
.end method