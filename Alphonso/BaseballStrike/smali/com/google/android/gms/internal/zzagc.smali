.class final Lcom/google/android/gms/internal/zzagc;
.super Lcom/google/android/gms/internal/zzagq;


# instance fields
.field private synthetic zzZb:Lcom/google/android/gms/internal/zzagr;

.field private synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzagr;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzagc;->zztH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzagc;->zzZb:Lcom/google/android/gms/internal/zzagr;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzagq;-><init>(Lcom/google/android/gms/internal/zzaft;)V

    return-void
.end method


# virtual methods
.method public final zzbd()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagc;->zztH:Landroid/content/Context;

    const-string v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "use_https"

    const-string v3, "use_https"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagc;->zzZb:Lcom/google/android/gms/internal/zzagr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagc;->zzZb:Lcom/google/android/gms/internal/zzagr;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzagr;->zzf(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method