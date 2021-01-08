.class final Lcom/google/android/gms/internal/zzaqf;
.super Lcom/google/android/gms/internal/zzapy;


# instance fields
.field private synthetic zzakd:Lcom/google/android/gms/internal/zzaqe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqf;->zzakd:Lcom/google/android/gms/internal/zzaqe;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqf;->zzakd:Lcom/google/android/gms/internal/zzaqe;

    new-instance v1, Lcom/google/android/gms/internal/zzaqh;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzaqh;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaqe;->setResult(Lcom/google/android/gms/common/api/Result;)V

    invoke-static {p2}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqf;->zzakd:Lcom/google/android/gms/internal/zzaqe;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqe;->zza(Lcom/google/android/gms/internal/zzaqe;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqf;->zzakd:Lcom/google/android/gms/internal/zzaqe;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqe;->zzb(Lcom/google/android/gms/internal/zzaqe;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqf;->zzakd:Lcom/google/android/gms/internal/zzaqe;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqe;->zzb(Lcom/google/android/gms/internal/zzaqe;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
