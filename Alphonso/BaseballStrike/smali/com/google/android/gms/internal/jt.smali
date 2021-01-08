.class final Lcom/google/android/gms/internal/jt;
.super Lcom/google/android/gms/internal/ki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ki",
        "<",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/internal/lk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbWB:Lcom/google/firebase/auth/UserProfileChangeRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki;-><init>(I)V

    const-string v0, "request cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/UserProfileChangeRequest;

    iput-object v0, p0, Lcom/google/android/gms/internal/jt;->zzbWB:Lcom/google/firebase/auth/UserProfileChangeRequest;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/jt;->zzbWK:Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/jt;->zzbWJ:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzEG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jt;->zzbWB:Lcom/google/firebase/auth/UserProfileChangeRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/jt;->zzbWI:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/kb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final zzEK()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/jt;->zzbWL:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/lk;

    iget-object v1, p0, Lcom/google/android/gms/internal/jt;->zzbWR:Lcom/google/android/gms/internal/kw;

    iget-object v2, p0, Lcom/google/android/gms/internal/jt;->zzbVX:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/android/gms/internal/jt;->zzbWS:Lcom/google/android/gms/internal/ku;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ip;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ku;)Lcom/google/android/gms/internal/lr;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/lk;->zza(Lcom/google/android/gms/internal/kw;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ki;->zzV(Ljava/lang/Object;)V

    return-void
.end method
