.class final Lcom/google/android/gms/internal/zzcja;
.super Lcom/google/android/gms/internal/zzceq;


# instance fields
.field private synthetic zzbuu:Lcom/google/android/gms/internal/zzciz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciz;Lcom/google/android/gms/internal/zzcgk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcja;->zzbuu:Lcom/google/android/gms/internal/zzciz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzceq;-><init>(Lcom/google/android/gms/internal/zzcgk;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcja;->zzbuu:Lcom/google/android/gms/internal/zzciz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzciz;->zzzo()V

    return-void
.end method
