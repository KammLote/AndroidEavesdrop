.class public final Lcom/google/android/gms/internal/zzbjz;
.super Lcom/google/android/gms/common/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzz",
        "<",
        "Lcom/google/android/gms/internal/zzbki;",
        ">;"
    }
.end annotation


# static fields
.field private static zzaLu:Lcom/google/android/gms/internal/zzel;


# instance fields
.field private final zzaLv:Lcom/google/android/gms/internal/zzbka;

.field private zzaLw:Lcom/google/android/gms/internal/zzes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzes",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/internal/zzbis;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrO:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzel;->zzrK:Lcom/google/android/gms/internal/zzel;

    sput-object v0, Lcom/google/android/gms/internal/zzbjz;->zzaLu:Lcom/google/android/gms/internal/zzel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/awareness/AwarenessOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 11

    const/16 v3, 0x2f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzz;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjz;->zzrO:Landroid/os/Looper;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzq;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "@@ContextManagerNullAccount@@"

    :goto_0
    if-nez p4, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbka;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/android/gms/common/util/zzd;->zzA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzbka;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzq;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1, v1, p4}, Lcom/google/android/gms/internal/zzbka;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/awareness/AwarenessOptions;)Lcom/google/android/gms/internal/zzbka;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzaua;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/internal/zzauc;",
            ">;",
            "Lcom/google/android/gms/internal/zzaua;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzre()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbki;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbkc;->zzd(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbkc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbka;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzbka;->zzaLx:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzbka;->moduleId:Ljava/lang/String;

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbki;->zza(Lcom/google/android/gms/internal/zzbkg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaua;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbiz;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
            ">;",
            "Lcom/google/android/gms/internal/zzbiz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzre()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbki;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbkc;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbkc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbka;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzbka;->zzaLx:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzbka;->moduleId:Ljava/lang/String;

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbki;->zza(Lcom/google/android/gms/internal/zzbkg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbiz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbji;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzbji;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLw:Lcom/google/android/gms/internal/zzes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzes;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjz;->zzrO:Landroid/os/Looper;

    sget-object v2, Lcom/google/android/gms/internal/zzbis;->zzaKT:Lcom/google/android/gms/internal/zzet;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzes;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/zzet;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLw:Lcom/google/android/gms/internal/zzes;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLw:Lcom/google/android/gms/internal/zzes;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzbji;->zzaLj:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/zzbjs;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbjs;->zzaLp:Lcom/google/android/gms/internal/zzbjk;

    if-nez v4, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbjs;->zzaLq:Lcom/google/android/gms/awareness/fence/zza;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjz;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbki;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbkc;->zza(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbkf;)Lcom/google/android/gms/internal/zzbkc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbka;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzbka;->zzaLx:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzbka;->moduleId:Ljava/lang/String;

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbki;->zza(Lcom/google/android/gms/internal/zzbkg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbji;)V

    return-void
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbki;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbki;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbkj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbkj;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final zzdb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.contextmanager.service.ContextManagerService.START"

    return-object v0
.end method

.method protected final zzdc()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    return-object v0
.end method

.method protected final zzmo()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.contextmanager.service.args"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjz;->zzaLv:Lcom/google/android/gms/internal/zzbka;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/zze;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final zzrg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
