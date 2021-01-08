.class final Lcom/google/android/gms/internal/zzckt;
.super Lcom/google/android/gms/internal/zzcmv;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbwQ:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcmv;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzbwQ:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcnr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzbwQ:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcku;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcku;-><init>(Lcom/google/android/gms/internal/zzckt;Lcom/google/android/gms/internal/zzcnr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method
