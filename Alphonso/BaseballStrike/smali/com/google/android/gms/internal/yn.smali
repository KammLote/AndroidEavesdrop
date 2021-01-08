.class final Lcom/google/android/gms/internal/yn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic zzcjr:Lcom/google/android/gms/internal/yl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/yl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yn;->zzcjr:Lcom/google/android/gms/internal/yl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/yl;Lcom/google/android/gms/internal/ym;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/yn;-><init>(Lcom/google/android/gms/internal/yl;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/yn;->zzcjr:Lcom/google/android/gms/internal/yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yl;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/yn;->zzcjr:Lcom/google/android/gms/internal/yl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yl;->zzGX()Lcom/google/android/gms/internal/tf;

    move-result-object v1

    const-string v2, "FirebaseDatabaseWorker"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/tf;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/tf;->zza(Ljava/lang/Thread;Z)V

    new-instance v2, Lcom/google/android/gms/internal/yo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/yo;-><init>(Lcom/google/android/gms/internal/yn;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/tf;->zza(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method
