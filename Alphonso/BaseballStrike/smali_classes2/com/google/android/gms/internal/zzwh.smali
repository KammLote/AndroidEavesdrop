.class final Lcom/google/android/gms/internal/zzwh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzNx:Lcom/google/android/gms/internal/zzwg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwh;->zzNx:Lcom/google/android/gms/internal/zzwg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwh;->zzNx:Lcom/google/android/gms/internal/zzwg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwg;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwh;->zzNx:Lcom/google/android/gms/internal/zzwg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzwg;->zza(Lcom/google/android/gms/internal/zzwg;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagy;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
