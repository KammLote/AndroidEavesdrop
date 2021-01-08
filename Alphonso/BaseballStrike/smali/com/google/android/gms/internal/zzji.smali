.class public final Lcom/google/android/gms/internal/zzji;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# static fields
.field private static zzAN:Lcom/google/android/gms/internal/zzji;

.field private static final zzuH:Ljava/lang/Object;


# instance fields
.field private final zzAO:Lcom/google/android/gms/internal/zzaix;

.field private final zzAP:Lcom/google/android/gms/internal/zziz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzji;->zzuH:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzji;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzji;->zzuH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/zzji;->zzAN:Lcom/google/android/gms/internal/zzji;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzaix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaix;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzAO:Lcom/google/android/gms/internal/zzaix;

    new-instance v0, Lcom/google/android/gms/internal/zziz;

    new-instance v1, Lcom/google/android/gms/internal/zziq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zziq;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzip;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzip;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzli;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzli;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzqc;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzqc;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzadg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzadg;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzwv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzwv;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zziz;-><init>(Lcom/google/android/gms/internal/zziq;Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/internal/zzadg;Lcom/google/android/gms/internal/zzwv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzAP:Lcom/google/android/gms/internal/zziz;

    return-void
.end method

.method private static zzdr()Lcom/google/android/gms/internal/zzji;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzji;->zzuH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzji;->zzAN:Lcom/google/android/gms/internal/zzji;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzds()Lcom/google/android/gms/internal/zzaix;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzdr()Lcom/google/android/gms/internal/zzji;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji;->zzAO:Lcom/google/android/gms/internal/zzaix;

    return-object v0
.end method

.method public static zzdt()Lcom/google/android/gms/internal/zziz;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzdr()Lcom/google/android/gms/internal/zzji;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji;->zzAP:Lcom/google/android/gms/internal/zziz;

    return-object v0
.end method
