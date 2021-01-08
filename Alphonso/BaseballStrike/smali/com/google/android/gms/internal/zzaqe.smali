.class final Lcom/google/android/gms/internal/zzaqe;
.super Lcom/google/android/gms/internal/zzapz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapz",
        "<",
        "Lcom/google/android/gms/appinvite/AppInviteInvitationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaka:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzakb:Z

.field private final zzakc:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzapx;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzapz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzaqe;->zzakb:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqe;->zzaka:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqe;->zzakc:Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaqe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqe;->zzakb:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaqe;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqe;->zzaka:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaqg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqe;->zzakc:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaqh;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqe;->zzakc:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaqh;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaqe;->setResult(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqg;->zza(Lcom/google/android/gms/internal/zzaqi;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaqf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaqf;-><init>(Lcom/google/android/gms/internal/zzaqe;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqg;->zza(Lcom/google/android/gms/internal/zzaqi;)V

    goto :goto_0
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzaqh;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzaqh;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    return-object v0
.end method
