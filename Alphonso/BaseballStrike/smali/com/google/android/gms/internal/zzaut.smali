.class final Lcom/google/android/gms/internal/zzaut;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzasG:Lcom/google/android/gms/internal/zzaus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaus;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaut;->zzasG:Lcom/google/android/gms/internal/zzaus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasG:Lcom/google/android/gms/internal/zzaus;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zza(Lcom/google/android/gms/internal/zzaur;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasG:Lcom/google/android/gms/internal/zzaus;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zzb(Lcom/google/android/gms/internal/zzaur;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaut;->zzasG:Lcom/google/android/gms/internal/zzaus;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasG:Lcom/google/android/gms/internal/zzaus;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zzc(Lcom/google/android/gms/internal/zzaur;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasG:Lcom/google/android/gms/internal/zzaus;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zzc(Lcom/google/android/gms/internal/zzaur;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzasG:Lcom/google/android/gms/internal/zzaus;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zzd(Lcom/google/android/gms/internal/zzaur;)V

    :cond_1
    return-void
.end method
