.class final Lcom/google/android/gms/internal/ql;
.super Lcom/google/android/gms/internal/yl;


# instance fields
.field private synthetic zzbZC:Lcom/google/android/gms/internal/wf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qi;Lcom/google/android/gms/internal/wf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ql;->zzbZC:Lcom/google/android/gms/internal/wf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/yl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qi;->zzcdb:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method protected final zzGX()Lcom/google/android/gms/internal/tf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qi;->zzcdc:Lcom/google/android/gms/internal/tf;

    return-object v0
.end method

.method public final zzf(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ql;->zzbZC:Lcom/google/android/gms/internal/wf;

    invoke-static {p1}, Lcom/google/android/gms/internal/yl;->zzh(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/wf;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
