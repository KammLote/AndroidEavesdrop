.class public final Lcom/google/android/gms/internal/zzcfx;
.super Ljava/lang/Object;


# instance fields
.field private final zzBP:Ljava/lang/String;

.field private zzaAI:Z

.field private final zzbrD:Z

.field private zzbrE:Z

.field private synthetic zzbrF:Lcom/google/android/gms/internal/zzcfv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcfv;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfx;->zzbrF:Lcom/google/android/gms/internal/zzcfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfx;->zzBP:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfx;->zzbrD:Z

    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfx;->zzbrE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfx;->zzbrE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfx;->zzbrF:Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfv;->zza(Lcom/google/android/gms/internal/zzcfv;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfx;->zzBP:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcfx;->zzbrD:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfx;->zzaAI:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfx;->zzaAI:Z

    return v0
.end method

.method public final set(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfx;->zzbrF:Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfv;->zza(Lcom/google/android/gms/internal/zzcfv;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfx;->zzBP:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcfx;->zzaAI:Z

    return-void
.end method
