.class final Lcom/google/android/gms/internal/zzaus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;


# instance fields
.field final synthetic zzasF:Lcom/google/android/gms/internal/zzaur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaur;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zza(Lcom/google/android/gms/internal/zzaur;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zzb(Lcom/google/android/gms/internal/zzaur;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzal(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zze(Lcom/google/android/gms/internal/zzaur;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzauu;-><init>(Lcom/google/android/gms/internal/zzaus;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzh(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final zznL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zza(Lcom/google/android/gms/internal/zzaur;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zzb(Lcom/google/android/gms/internal/zzaur;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzal(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasF:Lcom/google/android/gms/internal/zzaur;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaur;->zze(Lcom/google/android/gms/internal/zzaur;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaut;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaut;-><init>(Lcom/google/android/gms/internal/zzaus;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzi(Ljava/lang/Runnable;)V

    goto :goto_0
.end method