.class public final Lcom/google/android/gms/internal/zzbun;
.super Lcom/google/android/gms/internal/zzbvy;


# instance fields
.field private final zzaVx:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbun;->zzaVx:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbun;->zzaVx:Lcom/google/android/gms/internal/zzbay;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method
