.class abstract Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ki$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzbMf:Z

.field protected zzbVX:Lcom/google/firebase/FirebaseApp;

.field protected final zzbWH:I

.field protected final zzbWI:Lcom/google/android/gms/internal/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kk;"
        }
    .end annotation
.end field

.field protected zzbWJ:Lcom/google/firebase/auth/FirebaseUser;

.field protected zzbWK:Lcom/google/android/gms/internal/kb;

.field protected zzbWL:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field private zzbWM:Lcom/google/android/gms/internal/lv;

.field protected zzbWN:Lcom/google/android/gms/internal/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kh",
            "<TSuccessT;>;"
        }
    .end annotation
.end field

.field protected final zzbWO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWP:Landroid/app/Activity;

.field protected zzbWQ:Ljava/util/concurrent/Executor;

.field protected zzbWR:Lcom/google/android/gms/internal/kw;

.field protected zzbWS:Lcom/google/android/gms/internal/ku;

.field protected zzbWT:Lcom/google/android/gms/internal/ks;

.field protected zzbWU:Lcom/google/android/gms/internal/lc;

.field protected zzbWV:Ljava/lang/String;

.field protected zzbWW:Lcom/google/firebase/auth/PhoneAuthCredential;

.field zzbWX:Z

.field private zzbWY:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSuccessT;"
        }
    .end annotation
.end field

.field private zzbWZ:Lcom/google/android/gms/common/api/Status;

.field protected zzbWl:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/kk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/kj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWI:Lcom/google/android/gms/internal/kk;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWO:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    return-void
.end method

.method private final zzEP()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ki;->zzEK()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ki;->zzbMf:Z

    const-string v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzM(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWM:Lcom/google/android/gms/internal/lv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWM:Lcom/google/android/gms/internal/lv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lv;->onError(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ki;->zzM(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ki;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ki;->zzbMf:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ki;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ki;->zzEP()V

    return-void
.end method


# virtual methods
.method protected abstract dispatch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zzEK()V
.end method

.method public final zzL(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ki;->zzbMf:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ki;->zzbWX:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ki;->zzbWZ:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWN:Lcom/google/android/gms/internal/kh;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/kh;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/ki;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/ki",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWL:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzV(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ki;->zzbMf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ki;->zzbWX:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ki;->zzbWY:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWN:Lcom/google/android/gms/internal/kh;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/kh;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/ki;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/lv;",
            ")",
            "Lcom/google/android/gms/internal/ki",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWM:Lcom/google/android/gms/internal/lv;

    return-object p0
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ki;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ki",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ki;->zzbWO:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ki;->zzbWO:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/google/android/gms/internal/ki;->zzbWP:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWP:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWO:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ki$zza;->zza(Landroid/app/Activity;Ljava/util/List;)V

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWQ:Ljava/util/concurrent/Executor;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/ki;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lcom/google/android/gms/internal/ki",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbVX:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method public final zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/ki;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/internal/ki",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseUser;

    iput-object v0, p0, Lcom/google/android/gms/internal/ki;->zzbWJ:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method
