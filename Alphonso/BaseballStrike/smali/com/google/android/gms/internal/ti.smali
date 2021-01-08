.class final Lcom/google/android/gms/internal/ti;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private synthetic zzcfj:Ljava/util/concurrent/ThreadFactory;

.field private synthetic zzcfk:Lcom/google/android/gms/internal/tf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/th;Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/tf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ti;->zzcfj:Ljava/util/concurrent/ThreadFactory;

    iput-object p3, p0, Lcom/google/android/gms/internal/ti;->zzcfk:Lcom/google/android/gms/internal/tf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->zzcfj:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->zzcfk:Lcom/google/android/gms/internal/tf;

    const-string v2, "FirebaseDatabaseEventTarget"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/tf;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->zzcfk:Lcom/google/android/gms/internal/tf;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/tf;->zza(Ljava/lang/Thread;Z)V

    return-object v0
.end method
