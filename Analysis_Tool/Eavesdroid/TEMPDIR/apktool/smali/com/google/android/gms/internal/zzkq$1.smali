.class Lcom/google/android/gms/internal/zzkq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkq;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzLX:Lcom/google/android/gms/internal/zzkq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkq$1;->zzLX:Lcom/google/android/gms/internal/zzkq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkq$1;->zzLX:Lcom/google/android/gms/internal/zzkq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkq;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkq$1;->zzLX:Lcom/google/android/gms/internal/zzkq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkq;->zza(Lcom/google/android/gms/internal/zzkq;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzpo;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method