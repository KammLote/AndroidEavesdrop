.class final Lcom/google/android/gms/internal/zzavy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavz:Lcom/google/android/gms/internal/zzavx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavy;->zzavz:Lcom/google/android/gms/internal/zzavx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavy;->zzavz:Lcom/google/android/gms/internal/zzavx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzavx;->zza(Lcom/google/android/gms/internal/zzavx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavy;->zzavz:Lcom/google/android/gms/internal/zzavx;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzavx;->zzb(Lcom/google/android/gms/internal/zzavx;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
