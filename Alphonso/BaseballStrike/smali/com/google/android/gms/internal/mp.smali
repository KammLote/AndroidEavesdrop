.class public final Lcom/google/android/gms/internal/mp;
.super Ljava/lang/Object;


# static fields
.field private static zzbYA:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbYn:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYo:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYp:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYq:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYr:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYs:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYt:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYu:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYv:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYw:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYx:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYy:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbYz:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x5

    const/4 v4, 0x0

    const-string v0, "crash:enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzbzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYn:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:gateway_url"

    const-string v1, "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key="

    new-instance v2, Lcom/google/android/gms/internal/zzbzy;

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/zzbzy;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/mp;->zzbYo:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:log_buffer_capacity"

    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYp:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:log_buffer_max_total_size"

    const v1, 0x8000

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYq:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:crash_backlog_capacity"

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYr:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:crash_backlog_max_age"

    const-wide/32 v2, 0x240c8400

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzbzx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYs:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:starting_backoff"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzbzx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYt:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:backoff_limit"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzbzx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYu:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:retry_num_attempts"

    const/16 v1, 0xc

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYv:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:batch_size"

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYw:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:batch_throttle"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzbzx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYx:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:frame_depth"

    const/16 v1, 0x3c

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYy:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:receiver_delay"

    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYz:Lcom/google/android/gms/internal/zzbzt;

    const-string v0, "crash:thread_idle_timeout"

    const/16 v1, 0xa

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbzw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->zzbYA:Lcom/google/android/gms/internal/zzbzt;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzcae;->zzub()Lcom/google/android/gms/internal/zzbzz;

    invoke-static {}, Lcom/google/android/gms/internal/zzcae;->zzuc()Lcom/google/android/gms/internal/zzcaa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcaa;->initialize(Landroid/content/Context;)V

    return-void
.end method
