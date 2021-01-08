.class public final Lcom/google/android/gms/internal/zzcfy;
.super Ljava/lang/Object;


# instance fields
.field private final zzBP:Ljava/lang/String;

.field private zzaeZ:J

.field private zzbrE:Z

.field private synthetic zzbrF:Lcom/google/android/gms/internal/zzcfv;

.field private final zzbrG:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcfv;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfy;->zzbrF:Lcom/google/android/gms/internal/zzcfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfy;->zzBP:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcfy;->zzbrG:J

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcfy;->zzbrE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcfy;->zzbrE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfy;->zzbrF:Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfv;->zza(Lcom/google/android/gms/internal/zzcfv;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfy;->zzBP:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcfy;->zzbrG:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcfy;->zzaeZ:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcfy;->zzaeZ:J

    return-wide v0
.end method

.method public final set(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfy;->zzbrF:Lcom/google/android/gms/internal/zzcfv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfv;->zza(Lcom/google/android/gms/internal/zzcfv;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfy;->zzBP:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcfy;->zzaeZ:J

    return-void
.end method
