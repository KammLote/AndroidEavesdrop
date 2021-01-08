.class final Lcom/google/android/gms/internal/zzaqq;
.super Lcom/google/android/gms/internal/zzaqt;


# instance fields
.field private synthetic zzakC:Lcom/google/android/gms/internal/zzaqp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqq;->zzakC:Lcom/google/android/gms/internal/zzaqp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Landroid/accounts/Account;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqq;->zzakC:Lcom/google/android/gms/internal/zzaqp;

    new-instance v2, Lcom/google/android/gms/internal/zzaqu;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzaqu;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaqp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaqm;->zzmq()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_0
.end method
