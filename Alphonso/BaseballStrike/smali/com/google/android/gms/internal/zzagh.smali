.class final Lcom/google/android/gms/internal/zzagh;
.super Lcom/google/android/gms/internal/zzagq;


# instance fields
.field private synthetic zzZh:I

.field private synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzagh;->zztH:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/internal/zzagh;->zzZh:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzagq;-><init>(Lcom/google/android/gms/internal/zzaft;)V

    return-void
.end method


# virtual methods
.method public final zzbd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagh;->zztH:Landroid/content/Context;

    const-string v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "request_in_session_count"

    iget v2, p0, Lcom/google/android/gms/internal/zzagh;->zzZh:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method