.class public Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/HistoryApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewIntentBuilder"
.end annotation


# instance fields
.field private final zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

.field private zzaTa:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzaTb:J

.field private zzaTc:J

.field private zzaTd:Ljava/lang/String;

.field private final zzqF:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzqF:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTb:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start time must be set"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTc:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTb:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    :goto_1
    const-string v0, "End time must be set and after start time"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "vnd.google.fitness.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTa:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataType;->getMimeType(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.google.fitness.start_time"

    iget-wide v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTb:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "vnd.google.fitness.end_time"

    iget-wide v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTc:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTa:Lcom/google/android/gms/fitness/data/DataSource;

    const-string v3, "vnd.google.fitness.data_source"

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zze;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTd:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzqF:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTd:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Data source %s is not for the data type %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTa:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setPreferredApplication(Ljava/lang/String;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTd:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .locals 3

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTb:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzaTc:J

    return-object p0
.end method
