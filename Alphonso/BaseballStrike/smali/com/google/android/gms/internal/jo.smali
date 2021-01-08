.class final Lcom/google/android/gms/internal/jo;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->zzbWK:Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/jo;->zzbWJ:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzEG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->zzbWI:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kb;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final zzEK()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->zzbVX:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/jo;->zzbWS:Lcom/google/android/gms/internal/ku;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/lr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->zzbWL:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/lk;

    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->zzbWR:Lcom/google/android/gms/internal/kw;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/lk;->zza(Lcom/google/android/gms/internal/kw;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lo;-><init>(Lcom/google/android/gms/internal/lr;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jo;->zzV(Ljava/lang/Object;)V

    return-void
.end method
