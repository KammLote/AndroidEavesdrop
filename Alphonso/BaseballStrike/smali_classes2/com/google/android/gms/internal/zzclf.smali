.class final Lcom/google/android/gms/internal/zzclf;
.super Lcom/google/android/gms/internal/zzcnf;


# instance fields
.field private final zzbwW:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
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
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnf;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zzbwW:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcob;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zzbwW:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzclg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzclg;-><init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcob;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcod;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zzbwW:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzclh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzclh;-><init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcod;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method
