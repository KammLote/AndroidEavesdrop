.class public final Lcom/google/android/gms/internal/oi;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzcaF:Lcom/google/android/gms/internal/og;

.field private final zzcaG:Lcom/google/android/gms/internal/wg;

.field private final zzcaH:Z

.field private final zzcaI:Ljava/lang/String;

.field private final zzcaJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/og;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/oi;->zzcaG:Lcom/google/android/gms/internal/wg;

    iput-object p2, p0, Lcom/google/android/gms/internal/oi;->zzcaF:Lcom/google/android/gms/internal/og;

    iput-object p3, p0, Lcom/google/android/gms/internal/oi;->zzbZv:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/oi;->zzcaH:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/oi;->zzcaI:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/oi;->zzcaJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzFS()Lcom/google/android/gms/internal/wg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oi;->zzcaG:Lcom/google/android/gms/internal/wg;

    return-object v0
.end method

.method public final zzFT()Lcom/google/android/gms/internal/og;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oi;->zzcaF:Lcom/google/android/gms/internal/og;

    return-object v0
.end method

.method public final zzFU()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oi;->zzbZv:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final zzFV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oi;->zzcaH:Z

    return v0
.end method

.method public final zzFW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oi;->zzcaI:Ljava/lang/String;

    return-object v0
.end method

.method public final zzht()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oi;->zzcaJ:Ljava/lang/String;

    return-object v0
.end method
