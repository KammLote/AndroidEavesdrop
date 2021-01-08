.class final Lcom/google/android/gms/internal/zzckn;
.super Lcom/google/android/gms/internal/zzcms;


# instance fields
.field private final zzbwL:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcms;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckn;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcnn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckn;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcko;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcko;-><init>(Lcom/google/android/gms/internal/zzckn;Lcom/google/android/gms/internal/zzcnn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckn;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzckp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckp;-><init>(Lcom/google/android/gms/internal/zzckn;Lcom/google/android/gms/internal/zzcnt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnv;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckn;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzckq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckq;-><init>(Lcom/google/android/gms/internal/zzckn;Lcom/google/android/gms/internal/zzcnv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method
