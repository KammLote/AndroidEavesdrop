.class final Lcom/google/android/gms/internal/zzafz;
.super Lcom/google/android/gms/internal/zzagq;


# instance fields
.field private synthetic zzZd:Ljava/lang/String;

.field private synthetic zzZe:J

.field private synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafz;->zztH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafz;->zzZd:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzafz;->zzZe:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzagq;-><init>(Lcom/google/android/gms/internal/zzaft;)V

    return-void
.end method


# virtual methods
.method public final zzbd()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafz;->zztH:Landroid/content/Context;

    const-string v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_settings_json"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafz;->zzZd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzafz;->zzZe:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method